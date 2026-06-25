# homebrew-tap

Homebrew tap for [Markdown Better View](https://markdownbetterview.com) — a native macOS Markdown **viewer** (read-only, not an editor).

```sh
brew install xxBedy/tap/mbv
```

`mbv README.md` opens a Markdown file in Markdown Better View straight from the terminal. The app live-reloads on every save and its "Follow Edits" mode auto-scrolls the preview to whatever just changed — so you can run `mbv` once and watch a long document fill in as your AI tools (Claude, ChatGPT, Cursor, Copilot) write the pile of `.md` they produce.

Beyond live reload, the app gives you five themes with real dark mode, a table of contents with scrollspy, instant find, reading mode, opening a folder as tabs, KaTeX math, Mermaid diagrams, and syntax highlighting. Press Space on any `.md` in Finder for a rendered Quick Look preview and rich thumbnails.

## Note on the app dependency

The `mbv` CLI is a thin wrapper — it doesn't render Markdown itself, it hands files to the Markdown Better View app, which must be installed. The app is a one-time **US$9.99** on the [Mac App Store](https://apps.apple.com/app/id6773928994) (macOS 15+, universal Apple Silicon + Intel). Homebrew installs the `mbv` command, not the app.

Sandboxed, no tracking, no subscription — your files never leave your Mac.
