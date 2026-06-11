class Mbv < Formula
  desc "Open Markdown files in Markdown Better View"
  homepage "https://markdownbetterview.com"
  url "https://github.com/xxBedy/homebrew-tap/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "dcd0ba6dff7eec244a33140ef3067b324365403c1a55cd7fc614f7c1c81a73d5"
  license :cannot_represent # proprietary; ships with the Markdown Better View app

  def install
    bin.install "bin/mbv"
  end

  test do
    assert_match "mbv 1.0.0", shell_output("#{bin}/mbv --version")
  end
end
