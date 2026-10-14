cask "bellows" do
  version "1.21.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "6b5f6f62e1dc401a08de9679cc13a8c25b018c72d5b66cb5ed953e59404a86ea",
         intel: "93e64ee84d222f244cf5d1120845d48d08d3bfd704bcae8fa8a841fed8438243"

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
