cask "markdown-better-view" do
  version "1.0.9"
  sha256 "75f6e74447fa1fc0dad3798e65ab5893fade2ca8586eb11aab499010d0824d24"

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
