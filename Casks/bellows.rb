cask "bellows" do
  version "1.21.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "5795fc51cae9d3fefc88667149f5f4b5e9ef70519993d3a1204c35082ba9fb0c",
         intel: "fcbf30cc8b538aca698ce816ce6089e446ab7cfd0a473dfde05ca8fd2984fc67"

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
