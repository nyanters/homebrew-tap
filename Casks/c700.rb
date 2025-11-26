cask "c700" do
  version :latest
  sha256 :no_check

  url "https://github.com/osoumen/C700/releases/download/ver20211031/C700_mac_20211101.zip"
  name "C700"
  desc "Software Sampler plugin"
  homepage "https://github.com/osoumen/C700"

  container type: :zip

  audio_unit_plugin "C700/C700.component"
  vst3_plugin "C700/C700.vst"
end
