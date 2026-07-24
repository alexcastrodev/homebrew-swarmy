class Swarmy < Formula
  desc "A terminal UI to manage Docker Swarm services and containers"
  homepage "https://github.com/alexcastrodev/swarmy"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-darwin-arm64.tar.gz"
    sha256 "818be87d1f7780b275b6e07edb897b11be880365c81a4ada08c15341851a05b8"
  end

  on_linux do
    url "https://github.com/alexcastrodev/swarmy/releases/download/v#{version}/swarmy-linux-amd64.tar.gz"
    sha256 "3cc83e6a8f4aaa7d51da1c8786ada15342440eada874400685e56ab7333319aa"
  end

  def install
    bin.install "swarmy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swarmy --version")
  end
end
