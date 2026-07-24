class Swarmy < Formula
  desc "A terminal UI to manage Docker Swarm services and containers"
  homepage "https://github.com/alexcastrodev/swarmy"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-arm64.tar.gz"
    sha256 "8d1a68613f02447a8b88c490734fef2b6875aa4c1bee8bc02b112e1e4ad4bb15"
  end

  on_linux do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-linux-amd64.tar.gz"
    sha256 "ad140cf582833d99212e3d99751e3fb88915659f338cc0738648a6360a6b1dd3"
  end

  def install
    bin.install "swarmy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swarmy --version")
  end
end
