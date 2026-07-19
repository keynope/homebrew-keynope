cask "keynope" do
  version "0.1.2"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "3977a6935fe70c823b8b1f08bb6b09c35f76c259239c9600f3deecd52b7d2b3f",
         intel: "deb4e88825b48cbba71a138dd388fbb3c7db4892fb7951870b44fc8918b5b1b1"

  url "https://github.com/keynope/keynope/releases/download/#{version}/keynope-mac-#{arch}.tar.gz",
      verified: "github.com/keynope/keynope/"

  name "Keynope"
  desc "Retro terminal presentation tool"
  homepage "https://keynope.sh/"

  depends_on macos: :sonoma

  app "keynope-mac-#{arch}/Keynope.app"
  binary "keynope-mac-#{arch}/keynope"

  zap trash: [
    "~/Library/Application Support/Keynope",
    "~/Library/Containers/sh.keynope.app",
    "~/Library/Preferences/sh.keynope.app.plist",
    "~/Library/Saved Application State/sh.keynope.app.savedState",
  ]
end
