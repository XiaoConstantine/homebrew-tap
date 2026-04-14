class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.1/sgrep_Darwin_arm64.tar.gz"
      sha256 "ee081585cacfc5e2f186b2b4b91d688a717e615741a6284cdc72e53ad5756d63"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.1/sgrep_Darwin_x86_64.tar.gz"
      sha256 "6ab8361db01afaf6b54dcff5fd43d86e6e0f75c2f82eac3efcdd6b80070b1096"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.11.1/sgrep_Linux_x86_64.tar.gz"
    sha256 "8686aa8791d737ad0000c8d3567c7e0e0d4ea0a46e26a5c84ca29c5b39496978"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
