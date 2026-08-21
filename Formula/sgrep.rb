class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "049c1bdf21f5c44585f2e569d202b4f6ae311a6f490ba45fd5452de4171895d2"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "53937c0718e74ae0f5fa2279c18aacfb4782b627da16aaeaf317e8e0814b7df4"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "cf446103c43d7a24952c24ef84d442f1da80169b415a77ac1b6c5046ea9771c1"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
