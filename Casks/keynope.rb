cask "keynope" do
  version "1.8.2"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "e97d940108e89899896b0364614a6c00822018c2e772335f617637c194b40023",
         intel: "8544859c33e91094e0d430a1e08334f6d42165a11e0fe27b341f550889b1f521"

  url "https://github.com/keynope/keynope/releases/download/#{version}/keynope-mac-#{arch}.tar.gz",
      verified: "github.com/keynope/keynope/"

  name "Keynope"
  desc "Retro presentation editor"
  homepage "https://keynope.sh/"

  depends_on macos: :sonoma

  app "keynope-mac-#{arch}/Keynope.app"

  zap trash: [
    "~/Library/Application Support/Keynope",
    "~/Library/Containers/sh.keynope.app",
    "~/Library/Preferences/sh.keynope.app.plist",
    "~/Library/Saved Application State/sh.keynope.app.savedState",
  ]
end
