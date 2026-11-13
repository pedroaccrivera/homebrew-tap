cask "leve" do
  version "1.6.2"
  sha256 "51bbd281861af26a3e1bfc5c35c520afefdeed0173a4daab8d6b46e6de2dc5aa"

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
