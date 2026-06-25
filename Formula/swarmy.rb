class Swarmy < Formula
  desc "A terminal UI to manage Docker Swarm services and containers"
  homepage "https://github.com/alexcastrodev/swarmy"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-arm64.tar.gz"
    sha256 "89395cef5c79b1fab1fd655ffa948b0a6b7dd8c27a51904b1af2e789dc5385ef"
  end

  on_linux do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-linux-amd64.tar.gz"
    sha256 "168f6aa134e5d6426dc5619d67ed11045b5aff7bcb415e03429cf947f3077e6b"
  end

  def install
    bin.install "swarmy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swarmy --version")
  end
end
