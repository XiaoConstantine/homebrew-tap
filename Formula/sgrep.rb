class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.1/sgrep_Darwin_arm64.tar.gz"
      sha256 "3e671281a39f4010f7fc552a813240b577052e72f0379aa18768548d1c637856"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.1/sgrep_Darwin_x86_64.tar.gz"
      sha256 "0474fe0d23213cb951954babfba7c5c7c9ed7dd978d48f7a461e792cfca482e7"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.1/sgrep_Linux_x86_64.tar.gz"
    sha256 "9ae35fa845e28200a2a92aff8d1c3979d9ead7495391bf87d4bf17b8760f2310"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
