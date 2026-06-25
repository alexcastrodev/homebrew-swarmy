class Swarmy < Formula
  desc "A terminal UI to manage Docker Swarm services and containers"
  homepage "https://github.com/alexcastrodev/swarmy"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-arm64.tar.gz"
    sha256 "073a7c67e1a252df340123c1053dac44009c3a4c6affa896da82e70d2c549e19"
  end

  on_linux do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-linux-amd64.tar.gz"
    sha256 "4bb616b893f964d9e7104cd8c18caaf047595e3bdc78a40cdb2ff305ad2a837f"
  end

  def install
    bin.install "swarmy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swarmy --version")
  end
end
