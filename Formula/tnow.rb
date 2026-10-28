class Tnow < Formula
  desc "Terminal-native language runtime"
  homepage "https://github.com/andev0x/tnow"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.4/tnow_darwin_arm64.tar.gz"
      sha256 "561b237b157653c312242e11d0016ddfbad2b3dfad3053a6e3dd6778f2eee230"
    end
    on_intel do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.4/tnow_darwin_amd64.tar.gz"
      sha256 "38cfe1704d27e05a91d44eb841d549f9dc2abd28da11c6233c3cc49596ef9f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.4/tnow_linux_arm64.tar.gz"
      sha256 "3846d00a9e577ed5788d7455a02f2f528fbd96a4204b59104021828a164d0d04"
    end
    on_intel do
      url "https://github.com/andev0x/tnow/releases/download/v0.0.4/tnow_linux_amd64.tar.gz"
      sha256 "6ea26610c8477c78186202d1a7f18dfcb572885c79cd9d5838f219234c038b93"
    end
  end

  def install
    bin.install "tnow"
  end

  test do
    system "#{bin}/tnow", "--help"
  end
end
