cask "keynope" do
  version "1.8.1"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "6c04a9eece973889d57f1be2c235a6d74a269a1e1951e5be7769b7b2c06eeafe",
         intel: "e86d947d2e60c54bd4dd2f6a2ab1d4487e0facb73e51508109fc40993f54baf9"

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
