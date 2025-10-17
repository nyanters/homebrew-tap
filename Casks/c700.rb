cask "c700" do
  version "ver20211031"
  sha256 "47bc1f5d38db3a65ba4b37fb9949659b26728ec0e23c6facc749c6647e4c8696"

  url "https://github.com/osoumen/C700/releases/download/ver20211031/C700_mac_20211101.zip"
  name "C700"
  desc "Software Sampler plugin"
  homepage "https://github.com/osoumen/C700"

  container type: :zip

  audio_unit_plugin "C700.component"
end
