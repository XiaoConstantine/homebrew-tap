class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.1/sgrep_Darwin_arm64.tar.gz"
      sha256 "f6b220fca028ed235f627318e15249a363586e24d6833a8ecfa1093feb3b83de"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.1/sgrep_Darwin_x86_64.tar.gz"
      sha256 "fe4dbc705eec94a979e7ba4dc956352dc16b38d77a87620ec8f7c2f6ca59cb9c"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.1/sgrep_Linux_x86_64.tar.gz"
    sha256 "8e29fc2bbbb4c01e5642deb4c4cbe648c7ccc7849279617397e348649467164a"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
