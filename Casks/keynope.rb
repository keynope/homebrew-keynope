cask "keynope" do
  version "0.1.6"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "21c5c5b661c2317e870ce89314127a0d342b83a69839ef14c52fd6a6d9e3c52e",
         intel: "429b01bfb07507d067fdea28bc7d6aa3952fb3f373816d77eee5647211eac136"

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
