cask "keynope" do
  version "1.7.1"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "025d1b497b0efa123759c2a875d94ca6e5bb6a9c10a5fe54b5485d5c06730e18",
         intel: "60f6ddbb57d222a0be2d273b1b7f6a5217b472c4720ed117db8b3cb55378ec16"

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
