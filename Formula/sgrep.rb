class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "8114fae03e75880aca8cb365144a23f31ac0a03f8837838855db471c90fba592"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "71c8a1c662b22ddfd1f229860b8914e1c5b069006d0fde93d0428fb9c7b52e19"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.4.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "a4f4706b34aa58ad43c58aebe4863855853e31bcb4b60d4dfc587ec987939adf"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
