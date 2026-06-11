class Sgrep < Formula
  desc "Semantic grep - AI-powered code search using embeddings"
  homepage "https://github.com/XiaoConstantine/sgrep"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.13.0/sgrep_Darwin_arm64.tar.gz"
      sha256 "42387b8e6ed852219bcc9920606a784a68721dd0adf618d3bef2591fad9c9520"
    else
      url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.13.0/sgrep_Darwin_x86_64.tar.gz"
      sha256 "06c56df2c62e5201b5f5929a84af323d6f65db73e0a73492cfad0a09570f67d8"
    end
  end

  on_linux do
    url "https://github.com/XiaoConstantine/sgrep/releases/download/v0.13.0/sgrep_Linux_x86_64.tar.gz"
    sha256 "e0cf00ceb5f1ae7a9672739b5c17bed6542828ed9e89d0ef3287f56cae91d69b"
  end

  def install
    bin.install Dir["sgrep-*"].first => "sgrep"
  end

  test do
    system "#{bin}/sgrep", "--version"
  end
end
