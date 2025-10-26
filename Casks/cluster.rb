cask "cluster" do
  version "latest"
  sha256 "d70d23b108882bd213c6030786636c9d55733ecbf06cf3bac8be0edf7a8b61e8"

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
