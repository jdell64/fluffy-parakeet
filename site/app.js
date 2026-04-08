/* global inkjs */
(async function run() {
  const storyEl = document.getElementById("story");
  const choicesEl = document.getElementById("choices");
  const statsHudEl = document.getElementById("stats-hud");
  const statsHudContentEl = document.getElementById("stats-hud-content");

  const STAT_GROUPS = [
    {
      title: "Vitals",
      rows: [
        { key: "energy", label: "Energy" },
        { key: "stress", label: "Stress" },
        { key: "grades", label: "Grades" },
        { key: "confidence", label: "Confidence" },
      ],
    },
    {
      title: "Aptitudes",
      rows: [
        { key: "scholastics", label: "Scholastics" },
        { key: "varsity", label: "Varsity" },
        { key: "eloquence", label: "Eloquence" },
        { key: "expression", label: "Expression" },
        { key: "grit", label: "Grit" },
      ],
    },
    {
      title: "Rep",
      rows: [
        { key: "rep_popular", label: "Popular" },
        { key: "rep_jock", label: "Jock" },
        { key: "rep_nerd", label: "Nerd" },
        { key: "rep_rebel", label: "Rebel" },
        { key: "rep_arts", label: "Arts" },
      ],
    },
    {
      title: "People",
      rows: [
        { key: "alex_affinity", label: "Alex" },
        { key: "sarah_affinity", label: "Sarah" },
        { key: "chloe_affinity", label: "Chloe" },
        { key: "marcus_affinity", label: "Marcus" },
        { key: "derek_affinity", label: "Derek" },
      ],
    },
    {
      title: "Status",
      rows: [
        { key: "perception_label", label: "Perception" },
        { key: "parent_trust", label: "Parent trust" },
        { key: "hoco_stance", label: "Homecoming" },
        { key: "hoco_date", label: "Hoco date" },
      ],
    },
  ];

  function formatStatValue(v) {
    if (v === null || v === undefined) return "—";
    if (typeof v === "number" && !Number.isNaN(v)) {
      return String(Math.round(v));
    }
    if (typeof v === "boolean") {
      return v ? "Yes" : "No";
    }
    if (typeof v === "string") {
      return v;
    }
    if (typeof v === "object" && v !== null && typeof v.toString === "function") {
      return v.toString();
    }
    return String(v);
  }

  function buildStatsHud() {
    if (!statsHudContentEl) return;
    statsHudContentEl.replaceChildren();

    for (const group of STAT_GROUPS) {
      const section = document.createElement("section");
      section.className = "stats-hud__section";

      const h3 = document.createElement("h3");
      h3.className = "stats-hud__section-title";
      h3.textContent = group.title;
      section.appendChild(h3);

      const dl = document.createElement("dl");
      dl.className = "stats-hud__dl";

      for (const row of group.rows) {
        const dt = document.createElement("dt");
        dt.textContent = row.label;

        const dd = document.createElement("dd");
        const span = document.createElement("span");
        span.className = "stats-hud__value";
        span.dataset.statKey = row.key;
        dd.appendChild(span);

        dl.appendChild(dt);
        dl.appendChild(dd);
      }

      section.appendChild(dl);
      statsHudContentEl.appendChild(section);
    }

    if (statsHudEl) {
      statsHudEl.hidden = false;
    }
  }

  function updateStatsHud(story) {
    if (!statsHudEl || statsHudEl.hidden || !story) return;
    const spans = statsHudEl.querySelectorAll("[data-stat-key]");
    for (const span of spans) {
      const key = span.dataset.statKey;
      if (!key) continue;
      try {
        const raw = story.variablesState.$(key);
        span.textContent = formatStatValue(raw);
      } catch {
        span.textContent = "—";
      }
    }
  }

  function appendLine(text) {
    const p = document.createElement("p");
    p.textContent = text;
    storyEl.appendChild(p);
  }

  function clearChoices() {
    choicesEl.replaceChildren();
  }

  function renderChoices(story) {
    clearChoices();
    if (!story.currentChoices.length) {
      const done = document.createElement("button");
      done.textContent = "The End";
      done.disabled = true;
      choicesEl.appendChild(done);
      return;
    }

    for (const choice of story.currentChoices) {
      const btn = document.createElement("button");
      btn.textContent = choice.text;
      btn.addEventListener("click", () => {
        story.ChooseChoiceIndex(choice.index);
        render(story);
      });
      choicesEl.appendChild(btn);
    }
  }

  function render(story) {
    while (story.canContinue) {
      appendLine(story.Continue().trim());
    }
    renderChoices(story);
    updateStatsHud(story);
    window.scrollTo({ top: document.body.scrollHeight, behavior: "smooth" });
  }

  try {
    const res = await fetch("./story.json", { cache: "no-store" });
    if (!res.ok) {
      throw new Error("Missing story.json. Build step may have failed.");
    }
    const json = await res.json();
    const story = new inkjs.Story(json);
    buildStatsHud();
    updateStatsHud(story);
    render(story);
  } catch (err) {
    appendLine(`Failed to load story: ${err.message}`);
  }
})();
