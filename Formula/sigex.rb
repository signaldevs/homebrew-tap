class Sigex < Formula
  desc "Process runner/executor with support for multiple env files"
  homepage "https://github.com/signaldevs/sigex"
  version "0.0.1"
  license "AGPL-3.0-only"

  bottle do
    root_url "https://github.com/signaldevs/homebrew-tap/releases/download/sigex-0.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0371bae0257ec278b95e29b7190d8c1195667cb29e7d1a253700f90e508667b5"
    sha256 cellar: :any_skip_relocation, ventura:      "f577f41a6dce41bf32e7839e67fb701ed885f2e9ebc575ae75f89933770047a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c6a61573e1404d13d001ff14f41521534e199d2dfd40c785f8c79a798df294b6"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-darwin-arm64.tar.gz"
      sha256 "6dfcbeaed1570a97b9ca85ec25149352867af741683c5b3de9e136e860d07192"
    else
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-darwin-amd64.tar.gz"
      sha256 "2839d57a0e20c82d1a57778976f5bc671ff481339d8f7fe565f548ecd60c9b7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-linux-arm64.tar.gz"
      sha256 "1804d2bdc9088d5c68719e09d9ae8da8f1a3aee709fcaa039c5f3f41e910743a"
    else
      url "https://github.com/signaldevs/sigex/releases/download/v#{version}/sigex-linux-amd64.tar.gz"
      sha256 "2a8ef8bae55b6448fde4e34d5006781af73beb277d9b4cb5ea3ac54c6431576a"
    end
  end

  def install
    bin.install "sigex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigex --version")
  end
end
