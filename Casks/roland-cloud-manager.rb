cask "roland-cloud-manager" do
  version "3-1-18"

  on_ventura :or_older do
    sha256 "f37d3c648e634ee17c406defea40a9668fc2751254ccd819757e864aaff77ecc"

    url "https://rolandcloud.com/getmedia/01187a7f-0e47-4359-92f3-66879409dc10/RolandCloudManager-#{version}-Legacy.dmg"
  end
  on_sonoma :or_newer do
    sha256 "a2319170904fe90d4fc5ebd717143efa94f7a5e1d7938a60f099c56ea28c9d0a"

    url "https://rolandcloud.com/getmedia/4e92cf42-fba5-43f6-93ce-e47635c570ff/RolandCloudManager-#{version}-Universal.dmg"
  end

  name "Roland Cloud Manager"
  desc "VST Instruments and Software Manager"
  homepage "https://rolandcloud.com/Catalog/Essentials/Roland-Cloud-Manager"

  depends_on macos: ">= :big_sur"
  container type: :dmg

  installer manual: "Roland Cloud Manager Installer.app"

  zap trash: [
    "/Library/LaunchAgents/com.roland.rcmservice.plist",
    "/Library/Logs/DiagnosticReports/RolandCloudManager_*.diag",
    "~/Library/LaunchAgents/com.roland.cloudmanagercore.plist",
    "~/Library/LaunchAgents/com.roland.rcmservice.plist",
    "~/Library/Preferences/com.roland.cloudmanagercore.plist",
  ]
end
