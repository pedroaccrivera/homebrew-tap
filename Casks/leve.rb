cask "leve" do
  version "1.6.1"
  sha256 "a570aceaa73a0497a49a0aff734b06598ffc958f07ae204f0e6ef12e315baf09"

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
