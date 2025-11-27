class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.1/sgrep_Darwin_arm64.tar.gz"
      sha256 "0839596aff175f3ce97b548fdd484032c4886b0a8663e4fe6114641fff200d64"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.1/sgrep_Darwin_x86_64.tar.gz"
      sha256 "41ae465b288c711682ac531c06a6e7378dcab0d4d601dc7bc2e6da671ebbfc59"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.1/sgrep_Linux_x86_64.tar.gz"
    sha256 "2a4860af0f65dae7167d93d15da40f6bb093eb91f2f310fad81590e421404180"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
