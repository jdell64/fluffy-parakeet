# Class of 2005

A narrative-driven high school simulator set in a small-town American public school during the 2001–2002 school year. The story is implemented in [Ink](https://www.inklestudios.com/ink/) (Inkle Studios) and played in the browser via [inkjs](https://github.com/y-lohse/inkjs).

## Requirements

- **Node.js** (for npm dependencies and the build script)
- **[inklecate](https://github.com/inkle/ink/releases)** — the Ink compiler — either on your `PATH`, or placed under `inklecate-bin/` (see [Build](#build))

On Windows, [PowerShell 7+](https://github.com/PowerShell/PowerShell) (`pwsh`) is used by the npm script that runs the build.

## Quick start

```bash
git clone <your-repo-url>
cd ClassOf05
npm install
npm run build:story
```

This compiles `main.ink` to `site/story.json` and copies the inkjs runtime to `site/vendor/ink.js`. Open `site/index.html` in a browser to play locally (or use a static file server if your browser blocks `file://` fetches).

## Build

The build script is `scripts/build-story.ps1`. It expects:

- Entry ink file: `main.ink`
- Output: `site/story.json`
- Runtime copy: from `node_modules/inkjs/dist/ink.js` to `site/vendor/ink.js`

If `inklecate` is not on your path, add the compiler binary as either `inklecate-bin/inklecate.exe` (Windows) or `inklecate-bin/inklecate` (Unix-like). That path is gitignored so each machine can use its own copy.

## Repository layout

| Path | Role |
|------|------|
| `main.ink` | Story entry: globals, includes |
| `content/year_1/freshman/weeks/` | Week-by-week ink content |
| `calendar.ink`, `social_engine.ink`, `events_random.ink`, `messenger.ink` | Systems and side content |
| `site/` | Web shell: `index.html`, built `story.json`, `vendor/ink.js` |
| `docs/` | Design notes, schedules, deployment docs |

For design goals, characters, and variable conventions, see `PROJECT_CONTEXT.MD`.

## Deployment (GitHub Pages)

CI builds the story and publishes the `site/` folder. Configuration and checklist: `docs/github-pages.md` (workflow: `.github/workflows/deploy-pages.yml`).

## License

Add a `LICENSE` file when you decide how you want to share this project.
