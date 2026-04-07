# GitHub Pages Deployment (Inklecate)

## One-time repository settings

1. Open repository **Settings**.
2. Go to **Pages**.
3. Set **Build and deployment** source to **GitHub Actions**.
4. Confirm your default branch is `main`.

## Deployment workflow

- Workflow file: `.github/workflows/deploy-pages.yml`
- Trigger: push to `main`
- Build steps:
  - install npm deps (`npm ci`)
  - download `inklecate` binary
  - run `scripts/build-story.ps1`
  - upload `site/` as Pages artifact
- Deploy step publishes to GitHub Pages.

## Expected output

- Pages site root serves:
  - `index.html` (playable shell)
  - `story.json` (compiled Ink output)
  - `vendor/ink.js` (runtime)
- Expected URL pattern:
  - `https://<username>.github.io/<repo>/`

## Verification checklist

1. Push to `main`.
2. Wait for the **Deploy Ink Story to GitHub Pages** workflow to finish.
3. Open the deployment URL shown in the workflow summary.
4. Confirm story text renders and choice buttons are clickable.
