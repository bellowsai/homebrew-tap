cask "bellows" do
  version "1.13.0"
  sha256 "c295724565f9c57f0b8eecdcb6f58c780578e728e73c57e5af133dc056337ca5"

  url "https://github.com/bellowsai/bellows-releases/releases/download/v#{version}/Bellows-#{version}-arm64.dmg",
      verified: "github.com/bellowsai/bellows-releases/"
  name "Bellows"
  desc "Desktop workspace for coding agents, with team policy and an audit trail"
  homepage "https://bellowsai.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Bellows.app"

  zap trash: [
    "~/Library/Application Support/Bellows",
    "~/Library/Preferences/com.bellows.app.plist",
    "~/Library/Saved Application State/com.bellows.app.savedState",
  ]
end
