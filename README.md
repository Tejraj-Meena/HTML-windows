# Code Editor

A small multi-file HTML/CSS/JS editor with live preview, loop protection and zip export, packaged as a Windows app with Electron.

## Folder layout

```
code-editor/
├── .github/workflows/build.yml   <- builds the exe on GitHub (hidden folder)
├── workflow-build.yml            <- visible copy of the same file
├── src/
│   ├── index.html                <- the whole editor
│   └── main.js                   <- Electron window
├── package.json
├── build.bat
└── README.md
```

## If `.github` is missing after you unzip or upload

Folders that start with a dot are hidden on some systems and skipped by some uploaders. Fix:

1. In your GitHub repo click **Add file → Create new file**.
2. In the name box type `.github/workflows/build.yml` (typing the slashes creates the folders).
3. Paste the contents of `workflow-build.yml` and commit.

## Get the exe from GitHub (no setup on your PC)

1. Upload everything to a new GitHub repo.
2. Open the **Actions** tab. **Build Windows EXE** runs on every push to `main`, or start it with **Run workflow**.
3. When it finishes, download **Code-Editor-exe** under **Artifacts** and unzip it.

For a Release with the exe attached:

```
git tag v1.0.0
git push origin v1.0.0
```

## Build locally

```
npm install
npm run build            # portable exe -> dist/Code-Editor.exe
npm run build:installer  # installer    -> dist/Code-Editor-Setup.exe
npm start                # run without building
```

## Preview and console

The page (HTML and CSS) updates automatically as you type. JavaScript does not run until you press **▶ Run** (or Ctrl+Enter), and console output only appears after a Run.

## Saving

There is no auto save. Press **💾 Save** (or Ctrl+S) to store your project in the app. A dot next to Save means you have unsaved changes, and the app asks before closing. **Download** exports your site as `website.zip`.

## Notes

- Saved projects live in the app's local storage (`%APPDATA%\Code Editor`).
- The exe is unsigned, so Windows SmartScreen may warn on first run. Click **More info**, then **Run anyway**.
