cask "bellows" do
  version "1.19.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "02a82e95664799e16d6e64235809774b30c32b84794faf0266217d5095d40007",
         intel: "1d186318d0c36672a96aa5fbf2a40b551e1d281e53f15417244e854573195876"

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
