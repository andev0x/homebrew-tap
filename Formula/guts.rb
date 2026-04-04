
# Formula for 'guts' - A modern terminal data explorer
# Created by andev0x
class Guts < Formula
  desc "A modern, keyboard-first terminal data explorer for CSV, JSON, and Databases"
  homepage "https://github.com/andev0x/guts"
  version "1.0.5"
  license "MIT"

  # Selection logic based on system architecture
  if OS.mac?
    if Hardware::CPU.arm?
      # Apple Silicon (M1/M2/M3/M4)
      url "https://github.com/andev0x/guts/releases/download/v1.0.4/guts-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "aaa84f2595da438a13784ad9d3030f8009de9927b8c526a680bb1d07cad6174d"
    else
      # Intel Mac
      odie "The 'guts' formula currently only supports Apple Silicon (ARM) Macs."
    end
  elsif OS.linux?
    # Linux support (Optional but good for WSL users)
    url "https://github.com/andev0x/guts/releases/download/v1.0.4/guts-v1.0.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "694aea241f817ae882df0ade6760010b80a73188edf530ce232dccb6593dfc41"
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
