class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.7.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "a22c6a9c106fb79ea7641c4cd338dcb6c875c74c89db9bc874f28fd91d60f75f"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.7.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "a07580cbbe93cb4426261936cb92c3d3ec01af9e0da34bd3f924cc523779cd25"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.7.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "510c24a62d4fed97f665865edc61bc726321cafce03942fcd11a3cfa80b28b37"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
