cask "grandorgue" do
  arch arm: "arm64", intel: "x86_64"

  version "3.16.2-1"
  sha256 arm:   "7dc353a586faa2938226f48a6fcd38142bf72f0f2065feafc479afaf78fab8c3",
         intel: "30e9ea56e8df7ea607a829007dde9258307d9f058f4d7fca2ce057c3e85cb1d0"

  url "https://github.com/GrandOrgue/grandorgue/releases/download/#{version}/grandorgue-#{version}.macOS.#{arch}.dmg"
  name "GrandOrgue"
  desc "Sample based pipe organ simulator"
  homepage "https://github.com/GrandOrgue/grandorgue"

  container type: :dmg

  app "GrandOrgue.app"

  zap trash: [
    "~/Library/Preferences/com.our-organ.GrandOrgue.plist",
    "~/Library/Preferences/GrandOrgueConfig",
  ]
end
