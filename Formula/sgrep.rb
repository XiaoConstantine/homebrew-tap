class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.9.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "8dcf125db1fcdd88e8831bcdef61f0d7e5de12a73fdb24fa0d1e9f22aa804a69"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.9.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "e9253f7edd642647beac64f2640028fa2bd48c6e5e7ef15c706968d1e310c37f"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.9.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "1fe6a9ae4761abff8b1e4e9b42aa5e1cf31a8a6bfa8980da0d8d056b9b453593"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
