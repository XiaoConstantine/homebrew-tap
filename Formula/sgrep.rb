class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.8.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "c908a22f4194fc0bc598915787531101247aeae47caff54bb5d167c26fab0e78"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.8.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "631cfbce5d6021381f7484f1ecf9b8efb4fc208c3978729f099a3f814ba6deed"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.8.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "2e35983e537e34db01343cc708ff8fb8c64d6e74cca7259e7cc67e6844d0a5e2"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
