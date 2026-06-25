class Swarmy < Formula
  desc "A terminal UI to manage Docker Swarm services and containers"
  homepage "https://github.com/alexcastrodev/swarmy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-linux-amd64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "swarmy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swarmy --version")
  end
end
