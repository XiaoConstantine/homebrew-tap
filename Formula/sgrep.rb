class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.2.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "dd35380608119947e55241ecb965c15c6c7edd687d5676e9980181f8f757eb17"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.2.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "5784be7d680c8adb73033b69abc407c91d1a482d5035b5eff2d7c18ca03292bf"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.2.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "c6ca90f0b56f2a667966ac32b52712be55d8e711e1df9f6386b5734b83e3b6ad"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
