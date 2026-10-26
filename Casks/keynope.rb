cask "keynope" do
  version "1.8.7"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "e8592d037cdbca21b4cb817082533a1410154fff25aa7237f31c4029c971353e",
         intel: "da0e09c681bf519845d83572e4e4ca15dd706a083e844104a79088a228bb4afa"

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
