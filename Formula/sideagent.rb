class Sideagent < Formula
  desc "Run another coding agent from your current session"
  homepage "https://github.com/raine/sideagent"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/sideagent/releases/download/v0.1.9/sideagent-darwin-arm64.tar.gz"
      sha256 "bdd898db75e4cda9fdf4e8600a393631ebe79ad5987acf33a189779de6d71238"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.9/sideagent-darwin-amd64.tar.gz"
      sha256 "7a9cd90c21fbd7ca19457596a9af53a8c0458c3ebdd646ac21e7fc4c6afa773b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/sideagent/releases/download/v0.1.9/sideagent-linux-arm64.tar.gz"
      sha256 "5fbe2e2d4fcaa0301156f98b42d9b3d2cdb4ec91f08ba3761401fa180f6996a8"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.9/sideagent-linux-amd64.tar.gz"
      sha256 "a1aa5457a4af20d5a79bbc5678920837459adbef5e34c1cdd6689cb5da82a86a"
    end
  end

  def install
    bin.install "sideagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideagent --version")
  end
end
