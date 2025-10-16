cask "kamvas-pro-13-2-5k-driver" do
  version "15.7.24"
  sha256 "121c78d1b6bc53be764f82265512b64a169ec03dc635e934e3c09917c456e040"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_#{version}.dmg"
  name "HuionTablet"
  desc "Driver for Kamvas Pro 13 (2.5K)"
  homepage "https://www.huion.com/products/pen_display/KamvasPro/kamvas-pro-13-2k.html"

  container type: :dmg

  app "HuionTablet.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/HuionTabletCore_CEB13D7E-710B-5BC2-816D-40A289EE2373.plist",
    "~/Library/Application Support/HuionTablet",
    "~/Library/LaunchAgents/com.huion.HuionTablet.plist",
    "~/Library/Preferences/com.huion.HuionTablet.plist",
  ]
end
