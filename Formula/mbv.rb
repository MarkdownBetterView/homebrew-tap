class Mbv < Formula
  desc "Open Markdown files in Markdown Better View"
  homepage "https://markdownbetterview.com"
  url "https://github.com/xxBedy/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "e761ea6503583d5c2fa36f34034c8ed8f3f347bd13a8eba8002efaf1754d6afa"
  license :cannot_represent # proprietary; ships with the Markdown Better View app

  def install
    bin.install "bin/mbv"
  end

  test do
    assert_match "mbv 1.1.0", shell_output("#{bin}/mbv --version")
  end
end
