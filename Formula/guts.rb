
# Formula for 'guts' - A modern terminal data explorer
# Created by andev0x
class Guts < Formula
  desc "A modern, keyboard-first terminal data explorer for CSV, JSON, and Databases"
  homepage "https://github.com/andev0x/guts"
  version "1.0.6"
  license "MIT"

  # Selection logic based on system architecture
  if OS.mac?
    if Hardware::CPU.arm?
      # Apple Silicon (M1/M2/M3/M4)
      url "https://github.com/andev0x/guts/releases/download/v1.0.6/guts-v1.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "cf77ed9f45685d5e74a3cf78b381df1d1760401458ff49f0dd44224fd9d2befd"
    else
      # Intel Mac
      odie "The 'guts' formula currently only supports Apple Silicon (ARM) Macs."
    end
  elsif OS.linux?
    # Linux support (Optional but good for WSL users)
    url "https://github.com/andev0x/guts/releases/download/v1.0.6/guts-v1.0.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d1ed50a38127bf87cf9e07b160556719581805d71261ad6012d0300e6324e8a6"
  end

  # Installation logic
  def install
    # Binary name inside the archive is 'guts'
    # This moves it to the standard Homebrew bin directory
    bin.install "guts"
  end

  # Verification test
  test do
    # Simple check to ensure the binary runs and reports the correct version
    assert_match "guts #{version}", shell_output("#{bin}/guts --version")
  end
end
