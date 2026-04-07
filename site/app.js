/* global inkjs */
(async function run() {
  const storyEl = document.getElementById("story");
  const choicesEl = document.getElementById("choices");

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
    window.scrollTo({ top: document.body.scrollHeight, behavior: "smooth" });
  }

  try {
    const res = await fetch("./story.json", { cache: "no-store" });
    if (!res.ok) {
      throw new Error("Missing story.json. Build step may have failed.");
    }
    const json = await res.json();
    const story = new inkjs.Story(json);
    render(story);
  } catch (err) {
    appendLine(`Failed to load story: ${err.message}`);
  }
})();
