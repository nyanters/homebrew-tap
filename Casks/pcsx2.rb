cask "pcsx2" do
  version "2.4.0"
  sha256 "9c4c4abb95b0055c5403c3f70d9ed25659f9cce457711de533f8168c5c60015f"

  url "https://github.com/PCSX2/pcsx2/releases/download/v2.4.0/pcsx2-v#{version}-macos-Qt.tar.xz"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "https://github.com/PCSX2/pcsx2"

  container type: :tar

  rename "PCSX2-v#{version}.app" + "PCSX2.app"

  app "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
  ]

  caveats do
    requires_rosetta
  end
end
