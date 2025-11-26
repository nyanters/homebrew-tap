cask "duckstation" do
  version "latest"
  sha256 "68d112742fb3f4d8026196407cc221fa20f88fab6b1e9a1631a923e25f4994cb"

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
