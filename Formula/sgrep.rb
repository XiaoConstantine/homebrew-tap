class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "2e251d0b780cd3e711e5e96fac45609d75a963f342092a451adee2b05d769407"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "11bfb818618ee1ff9b7230187417727104e020579b80dba5a1c0bd00838bd260"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "b30eb84428f94ac71454b10c41d63fe4190b0466fbce31f5dfcaa7fc4af07380"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
