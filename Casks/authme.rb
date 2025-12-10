cask "authme" do
  version "6.3.2"
  sha256 "baa3f15e5e19a53e284727f501ce233d7aaa33bc74bc0efd46c047bc400113d9"

  url "https://github.com/Levminer/authme/releases/download/#{version}/authme-#{version}-macos-universal.dmg"
  name "Authme"
  desc "Simple cross-platform two-factor (2FA) authenticator app for desktop"
  homepage "https://github.com/Levminer/authme"

  container type: :dmg

  app "Authme.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/authme_CEB13D7E-710B-5BC2-816D-40A289EE2373.plist",
    "~/Library/Caches/com.levminer.authme",
    "~/Library/Preferences/com.levminer.authme.plist",
    "~/Library/WebKit/com.levminer.authme",
  ]
end
