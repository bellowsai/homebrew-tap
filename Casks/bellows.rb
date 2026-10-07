cask "bellows" do
  version "1.16.0"
  sha256 "bd4cd0d6fca672b4bc090272c9ee29ad443079d53d1a458bdf17bdd25a2f27ac"

  url "https://github.com/bellowsai/bellows-releases/releases/download/v#{version}/Bellows-#{version}-arm64.dmg"
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
