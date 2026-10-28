# Formula for tnow is a terminal-native language runtime, not a chatbot.
# Created by andev0x
class Tnow < Formula
  desc "tnow turns a bounded language intent into a bounded, validated LLM operation and prints the result with minimal ceremony."
  homepage "https://github.com/andev0x/tnow"
  version "0.0.3"
  license "MIT"

  # Selection logic based on system architecture
  if OS.mac?
    if Hardware::CPU.arm?
      # Apple Silicon (M1/M2/M3/M4)
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_darwin_arm64.tar.gz"
      sha256 "83322dad85f3207b9d3557944c858950bdc6386d5331b77a65feabc4c47f2be2"
    else
      # Intel Mac
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_darwin_amd64.tar.gz"
      sha256 "c4d7b4c35951f74d2ec4775fe40d8410e34daa9044e6fef3b405bd7db627f94b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      # ARM64 Linux
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_linux_arm64.tar.gz"
      sha256 "da4fb4ba0b3f608941ed67f5acbeeb8fdf6da96b32e8df50505d45eba79d4b7a"
    else
      # x86_64 Linux
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_linux_amd64.tar.gz"
      sha256 "50930aa473983d84f3338176d08706177fb752a38ade5275bc52e0bb2ccf2e59"
    end
  end

  # Installation logic
  def install
    # Binary name inside the archive is 'tnow'
    # This moves it to the standard Homebrew bin directory
    bin.install "tnow"
  end

  # Verification test
  test do
    # Simple check to ensure the binary runs and reports the correct version
    assert_match "tnow #{version}", shell_output("#{bin}/tnow --version")
  end
end
