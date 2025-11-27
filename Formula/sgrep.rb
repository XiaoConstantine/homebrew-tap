class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.3.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "548d6487791831ddcd2db9cfe2baeec6123289af26b01f929f628ef9bc76affc"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.3.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "6658790b4217bad215fc0aba2d72bf1729ded4b216a50987eece81006c5a3245"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.3.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "6d37bb637c8fcbb2bd7a0b68ccf0021b7d189289c1afebc7fb38752dad5b0957"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
