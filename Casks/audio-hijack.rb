cask "audio-hijack" do
  version "3.7.6"
  sha256 "a7b8ebd1e17a888817831e7c4064b04fe3521ff9fc6742b833ae819c34d80a79"

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  appcast "https://www.rogueamoeba.com/audiohijack/releasenotes.php"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://www.rogueamoeba.com/audiohijack/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Audio Hijack.app"

  zap trash: [
    "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
    "~/Library/Application Support/Audio Hijack",
    "~/Music/Audio Hijack",
  ]
end
