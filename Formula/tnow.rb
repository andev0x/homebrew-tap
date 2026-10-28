class Tnow < Formula
  desc "Terminal-native language runtime"
  homepage "https://github.com/andev0x/tnow"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_darwin_arm64.tar.gz"
      sha256 "83322dad85f3207b9d3557944c858950bdc6386d5331b77a65feabc4c47f2be2"
    end
    on_intel do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_darwin_amd64.tar.gz"
      sha256 "c4d7b4c35951f74d2ec4775fe40d8410e34daa9044e6fef3b405bd7db627f94b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_linux_arm64.tar.gz"
      sha256 "da4fb4ba0b3f608941ed67f5acbeeb8fdf6da96b32e8df50505d45eba79d4b7a"
    end
    on_intel do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.3/tnow_linux_amd64.tar.gz"
      sha256 "50930aa473983d84f3338176d08706177fb752a38ade5275bc52e0bb2ccf2e59"
    end
  end

  def install
    bin.install "tnow"
  end

  test do
    system "#{bin}/tnow", "--help"
  end
end
