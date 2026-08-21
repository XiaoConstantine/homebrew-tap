class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.1/sgrep_Darwin_arm64.tar.gz"
      sha256 "a02ee2281fc0e655ea7305c418d56c26933af62aa2746ee2dd8ea2998e839b2b"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.1/sgrep_Darwin_x86_64.tar.gz"
      sha256 "1cad861e4b812822dddb5f3b456a0926686d395048e499ad8fc63262e2ba6dc2"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.14.1/sgrep_Linux_x86_64.tar.gz"
    sha256 "adecb199a40ffda0b3792e65d2d9d777eba2b5615421a97d58e65425b08947c7"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
