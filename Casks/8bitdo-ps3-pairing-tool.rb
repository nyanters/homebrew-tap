cask "8bitdo-ps3-pairing-tool" do
  version "1.3"
  sha256 "c6f6a2e0343cefb6124dcdd440109f48f9afd0d87bb1ca8d338a1b7c879f73ed"

  url "https://download.8bitdo.com/Tools/Receiver/8BitDo_PS3_Tool_MacOS_V#{version}.zip"
  name "PS3 pairing tool"
  desc "Connect PS3 to 8BitDo retro receivers"
  homepage "https://support.8bitdo.com/receiver-usb-adapter-tools-for-ps3.html"

  container type: :zip

  app "8BitDo Retro Receiver Tools_For_PS3_Controller.app"

  caveats do
    requires_rosetta
  end
end
