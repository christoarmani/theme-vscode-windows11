# Fluent 11 Dark — VS Code theme

Windows 11 design language for VS Code: Mica-layered chrome (#202020), high-contrast editor (#1b1b1b), Fluent accent (#0078D4), Segoe UI chrome, plus a Fluent-style file icon theme.

![Fluent 11 Dark in VS Code, with the Fluent 11 Icons file icon theme and the custom CSS layer](images/screenshot.png)

<sub>Fluent 11 Dark with Fluent 11 Icons and <code>custom-vscode.css</code> (Steps 1–3). Vibrancy (Step 4) not enabled.</sub>

## File icons

**Fluent 11 Icons** ships 36 flat, Fluent-style icons covering folders and the most common file types.

<table>
<tr><td align="center"><img src="fileicons/icons/folder.svg" width="32" height="32"><br><sub>folder</sub></td><td align="center"><img src="fileicons/icons/folder-open.svg" width="32" height="32"><br><sub>open folder</sub></td><td align="center"><img src="fileicons/icons/file.svg" width="32" height="32"><br><sub>default</sub></td><td align="center"><img src="fileicons/icons/js.svg" width="32" height="32"><br><sub>.js .mjs .cjs</sub></td><td align="center"><img src="fileicons/icons/ts.svg" width="32" height="32"><br><sub>.ts</sub></td><td align="center"><img src="fileicons/icons/json.svg" width="32" height="32"><br><sub>.json .jsonc</sub></td></tr>
<tr><td align="center"><img src="fileicons/icons/html.svg" width="32" height="32"><br><sub>.html .htm</sub></td><td align="center"><img src="fileicons/icons/css.svg" width="32" height="32"><br><sub>.css .scss .less</sub></td><td align="center"><img src="fileicons/icons/md.svg" width="32" height="32"><br><sub>.md .markdown</sub></td><td align="center"><img src="fileicons/icons/py.svg" width="32" height="32"><br><sub>.py</sub></td><td align="center"><img src="fileicons/icons/image.svg" width="32" height="32"><br><sub>.png .jpg .jpeg</sub></td><td align="center"><img src="fileicons/icons/git.svg" width="32" height="32"><br><sub>.gitignore .gitattributes</sub></td></tr>
<tr><td align="center"><img src="fileicons/icons/vue.svg" width="32" height="32"><br><sub>.vue</sub></td><td align="center"><img src="fileicons/icons/react.svg" width="32" height="32"><br><sub>.jsx .tsx</sub></td><td align="center"><img src="fileicons/icons/rust.svg" width="32" height="32"><br><sub>.rs</sub></td><td align="center"><img src="fileicons/icons/go.svg" width="32" height="32"><br><sub>.go</sub></td><td align="center"><img src="fileicons/icons/java.svg" width="32" height="32"><br><sub>.java .kt</sub></td><td align="center"><img src="fileicons/icons/c.svg" width="32" height="32"><br><sub>.c .h</sub></td></tr>
<tr><td align="center"><img src="fileicons/icons/cpp.svg" width="32" height="32"><br><sub>.cpp .cc .hpp</sub></td><td align="center"><img src="fileicons/icons/cs.svg" width="32" height="32"><br><sub>.cs</sub></td><td align="center"><img src="fileicons/icons/php.svg" width="32" height="32"><br><sub>.php</sub></td><td align="center"><img src="fileicons/icons/rb.svg" width="32" height="32"><br><sub>.rb</sub></td><td align="center"><img src="fileicons/icons/sh.svg" width="32" height="32"><br><sub>.sh .bash .zsh</sub></td><td align="center"><img src="fileicons/icons/yaml.svg" width="32" height="32"><br><sub>.yml .yaml</sub></td></tr>
<tr><td align="center"><img src="fileicons/icons/xml.svg" width="32" height="32"><br><sub>.xml</sub></td><td align="center"><img src="fileicons/icons/toml.svg" width="32" height="32"><br><sub>.toml .ini</sub></td><td align="center"><img src="fileicons/icons/sql.svg" width="32" height="32"><br><sub>.sql</sub></td><td align="center"><img src="fileicons/icons/txt.svg" width="32" height="32"><br><sub>.txt .log</sub></td><td align="center"><img src="fileicons/icons/pdf.svg" width="32" height="32"><br><sub>.pdf</sub></td><td align="center"><img src="fileicons/icons/zip.svg" width="32" height="32"><br><sub>.zip .gz .tar</sub></td></tr>
<tr><td align="center"><img src="fileicons/icons/font.svg" width="32" height="32"><br><sub>.ttf .otf .woff</sub></td><td align="center"><img src="fileicons/icons/video.svg" width="32" height="32"><br><sub>.mp4 .mov .webm</sub></td><td align="center"><img src="fileicons/icons/audio.svg" width="32" height="32"><br><sub>.mp3 .wav .m4a</sub></td><td align="center"><img src="fileicons/icons/env.svg" width="32" height="32"><br><sub>.env .env.local</sub></td><td align="center"><img src="fileicons/icons/docker.svg" width="32" height="32"><br><sub>Dockerfile docker-compose</sub></td><td align="center"><img src="fileicons/icons/lock.svg" width="32" height="32"><br><sub>.lock lockfiles</sub></td></tr>
</table>

---

**Running `install.cmd` alone is not enough.** The installer only copies the theme files. Follow all of Step 1–3 below; Steps 4–5 are optional polish.

---

## Step 1 — Install and ACTIVATE the theme (required)

1. Double-click `install.cmd`. (Manual alternative: copy this folder to `%USERPROFILE%\.vscode\extensions\fluent11-dark-1.1.0`.)
2. Restart VS Code.
3. `Ctrl+K` `Ctrl+T` → pick **Fluent 11 Dark**.
4. File > Preferences > Theme > File Icon Theme → pick **Fluent 11 Icons**.

### Important: turn off auto theme switching
If **Auto Detect Color Scheme** is on, VS Code will override your pick with the OS-matched theme (e.g. "Dark 2026") and nothing will look right. Either turn it off, or point its dark slot at this theme:

```json
"window.autoDetectColorScheme": false,
"workbench.preferredDarkColorTheme": "Fluent 11 Dark"
```

> If your window still looks like stock Dark+, this is almost always the cause.

---

## Step 2 — Required plugin: Custom CSS and JS Loader

VS Code themes can only change **colors**, not shapes. Rounded tabs, the rounded editor card, acrylic flyout menus, and the pill-shaped activity bar indicator all come from `custom-vscode.css`, which needs this extension.

1. Install **Custom CSS and JS Loader** — extension id `be5invis.vscode-custom-css`.
2. Add to settings.json, using the **full absolute path** to the copied file:

```json
"vscode_custom_css.imports": [
  "file:///C:/Users/YOUR_NAME/.vscode/extensions/fluent11-dark-1.1.0/custom-vscode.css"
]
```

- Use forward slashes and the `file:///` prefix. A wrong path fails silently.
3. Close VS Code, then **reopen it as Administrator** (it has to patch its own install files).
4. Command palette (`Ctrl+Shift+P`) → **Enable Custom CSS and JS** → Restart.
5. Dismiss the "Your Code installation appears to be corrupt" warning — expected. Click the gear on the notification → **Don't Show Again**.

**After every VS Code update you must re-run "Enable Custom CSS and JS".** Updates replace the patched files.

---

## Step 3 — settings.json (copy-paste block)

Open settings.json with `Ctrl+Shift+P` → "Preferences: Open User Settings (JSON)".

```json
"workbench.colorTheme": "Fluent 11 Dark",
"workbench.iconTheme": "fluent11-icons",
"window.autoDetectColorScheme": false,
"workbench.preferredDarkColorTheme": "Fluent 11 Dark",

"window.titleBarStyle": "custom",
"workbench.tree.indent": 12,
"editor.fontFamily": "Cascadia Code, Consolas, monospace",
"editor.fontLigatures": true,
"editor.cursorSmoothCaretAnimation": "on",
"editor.smoothScrolling": true,
"workbench.list.smoothScrolling": true,

"vscode_custom_css.imports": [
  "file:///C:/Users/YOUR_NAME/.vscode/extensions/fluent11-dark-1.1.0/custom-vscode.css"
]
```

`"window.titleBarStyle": "custom"` is required — with the native title bar, the theme can't color the top of the window.

---

## Step 4 — Optional: frosted acrylic window (see your wallpaper)

Themes cannot make the OS window translucent. Install **Vibrancy Continued** (`illixion.vscode-vibrancy-continued`):

```json
"vscode_vibrancy.type": "acrylic",
"vscode_vibrancy.theme": "Default Dark",
"vscode_vibrancy.opacity": 0.3
```

Then command palette → **Reload Vibrancy**, and restart.

Notes:
- `custom-vscode.css` re-solidifies the editor (#1b1b1b) and terminal (#181818) so your code stays readable while the sidebar, title bar, and status bar stay frosted. This only works if Step 2 is done.
- **Not using the Custom CSS loader?** Use `"vscode_vibrancy.theme": "Dark (Only Subbar)"` instead — it keeps the editor solid on its own. You lose the rounded tabs and flyouts.
- `"type": "auto"` on Windows 11 gives Mica, which is nearly invisible behind a dark theme. Use `"acrylic"`.
- Vibrancy also needs re-enabling after VS Code updates.

---

## Step 5 — Optional: Fluent product icons

For the activity bar and toolbar glyphs, install **Fluent Icons** (`miguelsolorio.fluent-icons`) and follow its own setup. It pairs with the included file icon theme.

---

## Troubleshooting

| Symptom | Fix |
|---|---|
| Looks like stock Dark+ | Theme not selected, or Auto Detect Color Scheme is overriding it (Step 1) |
| Square tabs, no rounded editor card | Custom CSS not enabled, or wrong path in `vscode_custom_css.imports` (Step 2) |
| Editor text is see-through | Custom CSS layer isn't loading; or switch Vibrancy theme to "Dark (Only Subbar)" |
| Title bar is light/native gray | Set `"window.titleBarStyle": "custom"` and restart |
| Everything reverted after an update | Re-run "Enable Custom CSS and JS" and "Reload Vibrancy" |
| "Installation appears to be corrupt" | Expected side effect of patching. Dismiss with "Don't Show Again" |

## Color reference

| Surface | Hex |
|---|---|
| Title bar / chrome | `#202020` |
| Sidebar / activity bar | `#202020` |
| Editor + active tab | `#1b1b1b` |
| Panel / terminal | `#181818` |
| Accent | `#0078D4` |
| Focus / active border | `#4CC2FF` |
