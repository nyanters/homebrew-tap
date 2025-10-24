cask "emusc" do
  version "0.3.0"
  sha256 "88a7b759114dd50569b6b3e1db19422776b636692712e1b09f9cfbaf57efc2a7"

  url "https://github.com/skjelten/emusc/releases/download/v#{version}/EmuSC-#{version}-Darwin.dmg"
  name "EmuSC"
  desc "Software synthesizer emulating the Sound Canvas SC-55 lineup"
  homepage "https://github.com/skjelten/emusc"

  container type: :dmg

  app "EmuSC.app"

  zap trash: [
  ]
end
