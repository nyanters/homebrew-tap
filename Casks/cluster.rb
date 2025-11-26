cask "cluster" do
  version :latest
  sha256 :no_check

  url "https://update.cluster.mu/cluster.pkg"
  name "cluster"
  desc "Metaverse platform"
  homepage "https://cluster.mu/"

  container type: :pkg

  pkg "cluster.pkg"

  zap trash: [
    "/private/var/db/receipts/mu.cluster.bom",
    "/private/var/db/receipts/mu.cluster.plist",
    "~/Library/Application Support/mu.cluster",
    "~/Library/Caches/mu.cluster",
    "~/Library/Preferences/mu.cluster.plist",
  ]

  caveats do
    requires_rosetta
  end
end
