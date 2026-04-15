class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "5d854e5b4012cbb1ec6fb8576b29deb9fda46792f7ea23f4459e36f64f6578cb"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "497bff93ef82cc805729d622f443d6d93cdb9b23dbcb967a793437c4450c5f46"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "35df3311c0ad819c974920875a4344511e5ed2b5eecdac9603d2dd780672313a"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
