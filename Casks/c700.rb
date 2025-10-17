cask "c700" do
  version "ver20211031"
  sha256 "17528e332d2a1b9ac924f0884686b55ad02409a5e3d1d4d606f47ef86550c142"

  url "https://github.com/osoumen/C700/releases/download/ver20211031/C700_mac_20211101.zip"
  name "C700"
  desc "Software Sampler plugin"
  homepage "https://github.com/osoumen/C700"

  container type: :zip

  audio_unit_plugin "C700/C700.component"
  vst3_plugin "C700/C700.vst3"
end
