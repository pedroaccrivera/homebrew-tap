cask "leve" do
  version "1.6.4"
  sha256 "90fb8fc78c9ef38a51b08a82a3897d0d66aaadf70023a725bb9105348ac39bee"

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
