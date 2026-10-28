# Formula for 'paneship' - A modern terminal data explorer
# Created by andev0x
class Paneship < Formula
  desc "A modern, keyboard-first terminal data explorer for CSV, JSON, and Databases"
  homepage "https://github.com/andev0x/paneship"
  version "1.0.6"
  license "MIT"

  # Selection logic based on system architecture
  if OS.mac?
    if Hardware::CPU.arm?
      # Apple Silicon (M1/M2/M3/M4)
      url "https://github.com/andev0x/paneship/releases/download/v1.1.2/paneship"
      sha256 "26645a7599f5e9f7dfea04663232a00e946d8119a8dd5630d0310a0440c87fd8"
    else
      # Intel Mac
      odie "The 'paneship' formula currently only supports Apple Silicon (ARM) Macs."
    end
  # Installation logic
  def install
    # Binary name inside the archive is 'paneship'
    # This moves it to the standard Homebrew bin directory
    bin.install "paneship"
  end

  # Verification test
  test do
    # Simple check to ensure the binary runs and reports the correct version
    assert_match "paneship #{version}", shell_output("#{bin}/guts --version")
  end
end
