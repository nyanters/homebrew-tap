cask "cluster" do
  version "latest"
  sha256 "d7147ddd2398afa8c6d6331dce92e9f96bbb2a3d6d4de007f29ec7982813e4c0"

  url "https://update.cluster.mu/cluster.pkg"
  name "cluster"
  desc "Metaverse platform"
  homepage "https://cluster.mu"

  container type: :pkg

  pkg "cluster.pkg"

  zap trash: [
    "~/Library/Application Support/mu.cluster",
    "~/Library/Caches/mu.cluster",
    "~/Library/Preferences/mu.cluster.plist",
    "/private/var/db/receipts/mu.cluster.bom",
    "/private/var/db/receipts/mu.cluster.plist",
  ]

  caveats do
    requires_rosetta
  end
end
