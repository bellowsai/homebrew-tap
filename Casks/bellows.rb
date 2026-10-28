cask "bellows" do
  version "1.23.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "fe2742651edb82d41404bc3f1ccf0d600ab239d68e6f8231efb9ed6b29edecbe",
         intel: "b995d7695a4b59d98b9e503d36a2d4464b7bfabfe203d117f18ba5465f1a25c2"

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
