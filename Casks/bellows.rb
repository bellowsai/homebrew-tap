cask "bellows" do
  version "1.21.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "660f0c34da4f7f2c40d5ac52ba182b61bef1b1b9442244453805b304039ff021",
         intel: "a00e064d29ac24adba290e7bec304c1daa55db05abab8db0dde5636fcc15332e"

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
