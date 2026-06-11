class Mbv < Formula
  desc "Open Markdown files in Markdown Better View"
  homepage "https://markdownbetterview.com"
  url "https://github.com/xxBedy/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "2b06e0a07a4c01ac288787864905be43fac0ed1fe9dc93bd44706bdf99ed1921"
  license :cannot_represent # proprietary; ships with the Markdown Better View app

  def install
    bin.install "bin/mbv"
  end

  test do
    assert_match "mbv 1.1.0", shell_output("#{bin}/mbv --version")
  end
end
