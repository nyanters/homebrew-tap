cask "duckstation" do
  version "latest"
  sha256 "ee056920d6a37d14432d8050310050b4110ba2cbd13a24334c46b6cd96ed2b8e"

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
