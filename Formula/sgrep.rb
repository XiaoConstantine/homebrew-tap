class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "a63ccc4041f727fd268bc8cd48ec5f79202ae7b396ffb14a8f78dac513805455"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "2976802adbd123231befac05c40b293ac2103bf893f21c25331c3d38830dd4c2"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.5.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "e23e21819d6f6a5564254d8c8b1bb3de88a0bf53d93d28e3402ba893d67c761e"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
