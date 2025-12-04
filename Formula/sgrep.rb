class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.6.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "51d58294e0f86ac03ec90dfdde3113760306d8f802b73917d6bef91186bfc71a"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.6.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "2e1d469a198c6bb3691499cf0ceaf665fa936ab142e11f70639fa61b28df8682"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.6.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "fda84ec32e6338d2fb8c66aa3378de0fd24b4c8e8628234c65ba8eca56e097ab"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
