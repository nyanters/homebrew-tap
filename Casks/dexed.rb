cask "dexed" do
  version "0.9.8"
  sha256 "3be32f98e56b40d9555a4069368c7307b8bae3368459bb087cf6195ae7538704"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-macos.zip"
  name "Dexed"
  desc "DX7 FM multi plaform/multi format plugin"
  homepage "https://github.com/asb2m10/dexed"

  container nested: "dexed-#{version}-macos.dmg"
  container type: :zip

  pkg "dexed-macOS-#{version}.pkg"
end
