cask "markdown-better-view" do
  version "1.0.6"
  sha256 "2602b8f5b7154017666604cf2d515d2246175fe41ab1dba519f30ef14a4b3897"

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
