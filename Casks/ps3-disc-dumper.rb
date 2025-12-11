cask "ps3-disk-dumper" do
  version "4.4.0"
  sha256 "3e6fabd3fe4195162bb1485b093c9b1f310ab14dd2c8208ffb1cf5a59f4dbbf5"

  url "https://github.com/13xforever/ps3-disc-dumper/releases/download/v#{version}/ps3-disc-dumper_macos_v#{version}.zip"
  name "PS3 Disc Dumper"
  desc "Handy utility to make decrypted PS3 disc dumps"
  homepage "https://github.com/13xforever/ps3-disc-dumper"

  container type: :zip

  app "PS3 Disc Dumper.app"

  caveats do
    requires_rosetta
  end

  zap trash: [
    "~/Library/Preferences/com.github.13xforever.ps3-disc-dumper.plist",
  ]
end
