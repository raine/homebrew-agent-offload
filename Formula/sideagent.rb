class Sideagent < Formula
  desc "Run another coding agent from your current session"
  homepage "https://github.com/raine/sideagent"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/sideagent/releases/download/v0.1.7/sideagent-darwin-arm64.tar.gz"
      sha256 "d10a462928596039641283d0345234b3e37ea7f3dc87ac70a23012c39ef515ed"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.7/sideagent-darwin-amd64.tar.gz"
      sha256 "c59c69265119d0dfc0a0c7a698e83f919c4bf6a0a9395e1d0be8c314a3ea1534"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/sideagent/releases/download/v0.1.7/sideagent-linux-arm64.tar.gz"
      sha256 "8c9f8360c79e227d9ca5be44ae315eccf0f17065aafc4388893285fbc43de67a"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.7/sideagent-linux-amd64.tar.gz"
      sha256 "31e0e346a02c7bc37835e9d083e14ee9dc2b74924ab09db7c8710e76d2fcef3e"
    end
  end

  def install
    bin.install "sideagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideagent --version")
  end
end
