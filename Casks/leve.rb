cask "leve" do
  version "1.5.0"
  sha256 "dd7ae1041083a4b226be761345ac5ef4201e912b40ca427ad97b5982c288f531"

  url "https://github.com/pedroaccrivera/leve/releases/download/v#{version}/leve-#{version}-mac-arm64.zip"
  name "leve"
  desc "100% local, offline batch image resizer and video compressor"
  homepage "https://github.com/pedroaccrivera/leve"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "leve.app"

  zap trash: [
    "~/Library/Application Support/leve",
    "~/Library/Caches/com.local.leve",
    "~/Library/Preferences/com.local.leve.plist",
    "~/Library/Saved Application State/com.local.leve.savedState",
  ]
end
