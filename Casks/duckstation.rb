cask "duckstation" do
  version "latest"
  sha256 :no_check

  url "https://github.com/stenzek/duckstation/releases/download/latest/duckstation-mac-release.zip"
  name "DuckStation"
  desc "Fast PlayStation 1 emulator for x86-64/AArch32/AArch64/RV64"
  homepage "https://github.com/stenzek/duckstation"

  container type: :zip

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Logs/Homebrew/duckstation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
  ]
end
