cask "keynope" do
  version "1.8.8"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "e216416c61d4c79a702afcde219917ad4711f94b30a7e044ef6f5242460cb5ec",
         intel: "3d9ea0de76abacb12d02b93107098d9105821eadcf5d9b4cb5d847d01fb75e42"

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
