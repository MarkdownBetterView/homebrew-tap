cask "markdown-better-view" do
  version "1.0.7"
  sha256 "7df101551e6945f1d27b2b1f1d9120d16cdffbd1df89ffb5b8a6ae2b770461de"

  url "https://github.com/MarkdownBetterView/releases/releases/download/v#{version}/MarkdownBetterView-#{version}.dmg",
      verified: "github.com/MarkdownBetterView/releases/"
  name "Markdown Better View"
  desc "Native Markdown viewer with live reload"
  homepage "https://markdownbetterview.com/"

  livecheck do
    url "https://markdownbetterview.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Markdown Better View.app"

  uninstall quit: "cz.xxbedy.MarkDownBetterView"

  zap trash: [
    "~/Library/Caches/cz.xxbedy.MarkDownBetterView",
    "~/Library/Containers/cz.xxbedy.MarkDownBetterView",
    "~/Library/Group Containers/Z9UL859U25.cz.xxbedy.MarkDownBetterView",
    "~/Library/Preferences/cz.xxbedy.MarkDownBetterView.plist",
  ]
end
