class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "90d1e0573cd84704a5567dec93682e9e9b94ad16476e8e31d35f88ed7a42d37a"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "34986c281823081abbf8135a7aa7b8b4df15295b3094fd2b4c6de377e9bd3c95"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "cf7ec889707f7700122848610b965d4557a4ab573af447691aeb916adf6c6dde"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
