cask "dexed" do
  version "0.9.9"
  sha256 "d747015bcd6d8e0714e87ca8a679ff4861a4c27c73339051ecfa52d1928e8ff8"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-macos.zip"
  name "Dexed"
  desc "DX7 FM multi plaform/multi format plugin"
  homepage "https://github.com/asb2m10/dexed"

  container type: :zip

  pkg "dexed-macOS-#{version}.pkg"
end
