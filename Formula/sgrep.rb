class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "e38d487822025031513cbd9ed4e20a6ec7a1876ed2c5894b369170a3e68db12c"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "fa84b5874172a2ad65d0f1f2216078b7753fc477c8fc8685b158f3397fd83418"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "8df39a0dc5e8e6df2bdd0a6dffdfb84d8d12ad14af6c02af45bbb35614dac905"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
