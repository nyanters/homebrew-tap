cask "grandorgue" do
  arch arm: "arm64", intel: "x86_64"  

  version "3.16.1-1"
  on_arm do
    sha256 "671271d0e2c78c63704ae7265e1fe0c890d79fc1eb180a5c8cb5ad4e6826dd55"
  end
  on_intel do
    sha256 "5081cf637a27def9ddfed82d4385f47ac22270338744aeaa32aed05ff6aa3bc0"
  end

  url "https://github.com/GrandOrgue/grandorgue/releases/download/#{version}/grandorgue-#{version}.macOS.#{arch}.dmg"

  name "GrandOrgue"
  desc "Sample based pipe organ simulator"
  homepage "https://github.com/GrandOrgue/grandorgue"

  container type: :dmg

  app "GrandOrgue.app"

  zap trash: [
    "~/Library/Preferences/GrandOrgueConfig",
    "~/Library/Preferences/com.our-organ.GrandOrgue.plist",
  ]
end
