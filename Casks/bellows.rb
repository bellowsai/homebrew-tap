cask "bellows" do
  version "1.20.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "666e896bcf1428d565236631bcf4afa37e449d2c204e61301fc0b78a1e687805",
         intel: "786a9808fc2eb0e263c6badc6dc18d149a65686cf992e10ebdf5b298a90498e1"

  url "https://github.com/bellowsai/bellows-releases/releases/download/v#{version}/Bellows-#{version}-#{arch}.dmg"
  name "Bellows"
  desc "Desktop workspace for coding agents, with team policy and an audit trail"
  homepage "https://bellowsai.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Bellows.app"

  zap trash: [
    "~/Library/Application Support/Bellows",
    "~/Library/Preferences/com.bellows.app.plist",
    "~/Library/Saved Application State/com.bellows.app.savedState",
  ]
end
