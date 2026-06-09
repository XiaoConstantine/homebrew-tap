class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "3a186e78497204dc08b25a1586a8ff97548cb2c8f2c8890719b6f7b6ba164065"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "65a5f3ba43ac84edd01beccb0841104d9dce8ee7dfc7b905133395d45684f273"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.12.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "27d18de49eab7d009ed908bf91d777f7232d79369b477c968f7cd104a569e548"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
