cask "leve" do
  version "1.3.0"
  sha256 "5c65479b166a4e7c8b42e158a21b35cf26af03aa111bb4c3ad0c8fcf92def098"

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
