class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.2/sgrep_Darwin_arm64.tar.gz"
      sha256 "6cbfb04e836df62b84145c5aa74af5dbae3b05dd3b228ee28260586d0debe630"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.2/sgrep_Darwin_x86_64.tar.gz"
      sha256 "f7bc79ebda6e4d36a7ba0a078656580b9ea9c9809a1402e4e9432d64348a5076"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.10.2/sgrep_Linux_x86_64.tar.gz"
    sha256 "a331e1a4b56447db850c7fa030ed469f97cb9355392f55ac1fcdd1528d28a70c"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
