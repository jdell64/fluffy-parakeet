/* global inkjs */
/* Transcript: set ?noChoiceLog=1 to hide echoed choices in #story. */
(async function run() {
  const storyEl = document.getElementById("story");
  const choicesEl = document.getElementById("choices");
  const statsHudEl = document.getElementById("stats-hud");
  const statsHudContentEl = document.getElementById("stats-hud-content");
  const statsHudToggleEl = document.getElementById("stats-hud-toggle");
  const dateHudEl = document.getElementById("date-hud");
  const dateHudValueEl = document.getElementById("date-hud-value");

  const STATS_HUD_COLLAPSED_KEY = "classof05_statsHudCollapsed";

  function shouldLogChoices() {
    try {
      const p = new URLSearchParams(window.location.search);
      if (p.get("noChoiceLog") === "1") return false;
    } catch {
      /* ignore */
    }
    return true;
  }

  const choiceLogEnabled = shouldLogChoices();

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
    if (dateHudEl) {
      dateHudEl.hidden = false;
    }
    initStatsHudCollapse();
  }

  function setStatsHudCollapsed(collapsed) {
    if (!statsHudEl || !statsHudToggleEl) return;
    statsHudEl.classList.toggle("stats-hud--collapsed", collapsed);
    statsHudToggleEl.setAttribute("aria-expanded", collapsed ? "false" : "true");
    statsHudToggleEl.setAttribute(
      "aria-label",
      collapsed ? "Expand stats panel" : "Collapse stats panel",
    );
    try {
      if (collapsed) {
        sessionStorage.setItem(STATS_HUD_COLLAPSED_KEY, "1");
      } else {
        sessionStorage.setItem(STATS_HUD_COLLAPSED_KEY, "0");
      }
    } catch {
      /* ignore quota / private mode */
    }
  }

  function initStatsHudCollapse() {
    if (!statsHudEl || !statsHudToggleEl) return;
    let startCollapsed = true;
    try {
      const v = sessionStorage.getItem(STATS_HUD_COLLAPSED_KEY);
      if (v === "0") {
        startCollapsed = false;
      } else if (v === "1") {
        startCollapsed = true;
      }
    } catch {
      startCollapsed = true;
    }
    setStatsHudCollapsed(startCollapsed);
    statsHudToggleEl.addEventListener("click", () => {
      const next = !statsHudEl.classList.contains("stats-hud--collapsed");
      setStatsHudCollapsed(next);
    });
  }

  function updateDateHud(story) {
    if (!dateHudEl || dateHudEl.hidden || !story || !dateHudValueEl) return;
    try {
      const raw = story.variablesState.$("story_date");
      const text = formatStatValue(raw);
      dateHudValueEl.textContent = text === "—" ? "—" : text;
    } catch {
      dateHudValueEl.textContent = "—";
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

  function appendSceneTags(tags) {
    if (!storyEl || !tags || !tags.length) return;
    const wrap = document.createElement("div");
    wrap.className = "story__scene";
    wrap.setAttribute("role", "status");

    const timeRow = document.createElement("div");
    timeRow.className = "story__scene-time";
    const strong = document.createElement("strong");
    strong.textContent = tags[0];
    timeRow.appendChild(strong);
    wrap.appendChild(timeRow);

    for (let i = 1; i < tags.length; i += 1) {
      const sub = document.createElement("div");
      sub.className = "story__scene-sub";
      sub.textContent = tags[i];
      wrap.appendChild(sub);
    }

    storyEl.appendChild(wrap);
  }

  function appendNarrativeParagraph(text) {
    const t = (text || "").trim();
    if (!t || !storyEl) return;
    const p = document.createElement("p");
    p.className = "story__body";
    p.textContent = t;
    storyEl.appendChild(p);
  }

  function appendChoiceEcho(label) {
    if (!storyEl || !label) return;
    const p = document.createElement("p");
    p.className = "story__choice";
    const mark = document.createElement("span");
    mark.className = "story__choice-mark";
    mark.textContent = "▸ ";
    const span = document.createElement("span");
    span.className = "story__choice-text";
    span.textContent = label;
    p.appendChild(mark);
    p.appendChild(span);
    storyEl.appendChild(p);
  }

  function appendLine(text) {
    appendNarrativeParagraph(text);
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
        if (choiceLogEnabled) {
          appendChoiceEcho(choice.text);
        }
        story.ChooseChoiceIndex(choice.index);
        render(story);
      });
      choicesEl.appendChild(btn);
    }
  }

  function render(story) {
    while (story.canContinue) {
      const chunk = story.Continue();
      const text = chunk != null ? String(chunk).trim() : "";
      const tags = story.currentTags ? Array.from(story.currentTags) : [];
      if (tags.length) {
        appendSceneTags(tags);
      }
      if (text) {
        appendNarrativeParagraph(text);
      }
    }
    renderChoices(story);
    updateStatsHud(story);
    updateDateHud(story);
    const prefersReducedMotion =
      typeof window.matchMedia === "function" &&
      window.matchMedia("(prefers-reduced-motion: reduce)").matches;
    const scrollBehavior =
      prefersReducedMotion || (typeof window.matchMedia === "function" && window.matchMedia("(max-width: 600px)").matches)
        ? "auto"
        : "smooth";
    window.scrollTo({ top: document.body.scrollHeight, behavior: scrollBehavior });
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
    updateDateHud(story);
    render(story);
  } catch (err) {
    appendLine(`Failed to load story: ${err.message}`);
  }
})();
