cask "bellows" do
  version "1.24.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "615494bfe007d6dc83c55a9f29bb6478ad45e3e386236c4c4440842135735742",
         intel: "ea0248d2c759f68bd9b4d8024e8381292dec9efd54ffa4bc65a52fd8b9604711"

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
