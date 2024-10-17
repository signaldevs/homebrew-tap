class Sigex < Formula
  desc "Sigex is a process runner/executor with support for multiple .env file configuration as well as automatic retrieval of secrets from supported secrets manager platforms."
  homepage "https://github.com/signaldevs/sigex"
  version "0.0.1"
  license "GNU Affero General Public License v3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-darwin-arm64.tar.gz"
      sha256 "6dfcbeaed1570a97b9ca85ec25149352867af741683c5b3de9e136e860d07192"  # Replace this with the actual SHA-256 sum from the workflow
    else
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-darwin-amd64.tar.gz"
      sha256 "2839d57a0e20c82d1a57778976f5bc671ff481339d8f7fe565f548ecd60c9b7d"  # Replace this with the actual SHA-256 sum from the workflow
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-linux-arm64.tar.gz"
      sha256 "1804d2bdc9088d5c68719e09d9ae8da8f1a3aee709fcaa039c5f3f41e910743a"  # Replace this with the actual SHA-256 sum from the workflow
    else
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-linux-amd64.tar.gz"
      sha256 "2a8ef8bae55b6448fde4e34d5006781af73beb277d9b4cb5ea3ac54c6431576a"  # Replace this with the actual SHA-256 sum from the workflow
    end
  end

  def install
    bin.install "sigex"
  end

  test do
    assert_match "sigex --version", shell_output("#{bin}/sigex --version")
  end
end