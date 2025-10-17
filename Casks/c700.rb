cask "c700" do
  version "ver20211031"
  sha256 "ee056920d6a37d14432d8050310050b4110ba2cbd13a24334c46b6cd96ed2b8e"

  url "https://github.com/osoumen/C700/releases/download/ver20211031/C700_mac_20211101.zip"
  name "C700"
  desc "Software Sampler plugin"
  homepage "https://github.com/osoumen/C700"

  container type: :zip

  audio_unit_plugin "C700.component"
end
