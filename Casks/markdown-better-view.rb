cask "markdown-better-view" do
  version "1.0.5"
  sha256 "d02935ccc4b2708b7fdb421f785fd2f9542495d84cd7a6ee77f1f327fadb67c7"

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
