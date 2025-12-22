cask "magical-8bit-plug" do
  version :latest
  sha256 :no_check

  url "https://ymck.net/data/magical8bitplug/Magical8bitPlug2-mac-241023.zip"
  name "Magical 8bit Plug"
  desc "Software-synthesizer generates primitive electronic sounds"
  homepage "https://ymck.net/app/magical-8bit-plug-en"

  container type: :zip

  audio_unit_plugin "Components/Magical8bitPlug2.component"
  vst_plugin "VST/Magical8bitPlug2.vst"
  vst3_plugin "VST3/Magical8bitPlug2.vst3"
end
