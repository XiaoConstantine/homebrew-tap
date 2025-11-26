class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.1.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "39199fe7fe127402c546f106c1d2fd5cef2ba4d705caefefcc33f5ebd6ce3b5d"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.1.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "2d0c4885557e86d434d3af4c9fada198c8ce77bbafb60d98355307fe66add351"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.1.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "f9a0beb0dafdad6edb77e3081888b3a00f8e23d172878d4e0200136d5be6191f"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
