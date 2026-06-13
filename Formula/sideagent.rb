class Sideagent < Formula
  desc "Run another coding agent from your current session"
  homepage "https://github.com/raine/sideagent"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/sideagent/releases/download/v0.1.11/sideagent-darwin-arm64.tar.gz"
      sha256 "13b3e2c547ee1b0b84c34a8005b6b41b7385d11448cb93dfc3f7c05a7e137d3b"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.11/sideagent-darwin-amd64.tar.gz"
      sha256 "5e82bac6cc16ba12738d0026d68292268c678fc3d12e52197cf11025c6910aa7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raine/sideagent/releases/download/v0.1.11/sideagent-linux-arm64.tar.gz"
      sha256 "9d92926041a54fed920a8e815bb904be58ae360cd7cc49d4b2b37c246bc9cc5c"
    else
      url "https://github.com/raine/sideagent/releases/download/v0.1.11/sideagent-linux-amd64.tar.gz"
      sha256 "f2d243709b5b78211ba4680574b44030e06fbd666c20839504c4bb12cd6bf006"
    end
  end

  def install
    bin.install "sideagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideagent --version")
  end
end
