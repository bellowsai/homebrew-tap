cask "bellows" do
  version "1.23.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "372d4c13d9ad70b7e9160b2c3e6bc8eb669450f4509209f11b25b3ccba6d40fb",
         intel: "145443398fa35d9b45a1640f329aeaa25bae3816a876fc611a3026cb912358f1"

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
