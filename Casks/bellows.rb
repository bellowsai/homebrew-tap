cask "bellows" do
  version "1.24.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "5fdce909840d62ec6ee8f6516cc40c32e731e965ceddd6ee432c7aa33b928c58",
         intel: "8a9b0352c7b6fcee6f8efb9c92b8f79f5573187cd8e80b62ec678c908a9be79c"

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
