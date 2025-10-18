cask "vulkansdk" do
  version "1.4.328.1"
  sha256 "571db867d8736e402f6f674f26f17b339495d016f3b2afdbac23a3650475023f"

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.zip"
  name "Vulkan SDK"
  desc "cross-platform graphics and compute API"
  homepage "https://vulkan.lunarg.com/sdk/home"

  container type: :zip
  installer manual: "vulkansdk-macOS-#{version}.app"

  zap trash: [
  ]
end
