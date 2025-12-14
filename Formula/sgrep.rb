class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.10.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.3/sgrep_Darwin_arm64.tar.gz"
      sha256 "fd98a12d5067fbdd69c456198f1885e3fec42e52027688e0a85b113d9b33bca9"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.3/sgrep_Darwin_x86_64.tar.gz"
      sha256 "96cf29b2e0ac4fc28194980e124efefce19f3ef07044abca17e08db8e361183a"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.3/sgrep_Linux_x86_64.tar.gz"
    sha256 "c365c62dbf1f157f9040285e3dbdf24846c1ab68a95c032649b4b90bf8cf9218"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
