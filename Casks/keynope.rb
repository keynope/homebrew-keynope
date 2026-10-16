cask "keynope" do
  version "1.8.3"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "9ef4da376f2ecdbb29cea4616a9fc202bb2e81009db1b6540ad348da28cea178",
         intel: "3898e41d96a963a824916f1415375e3e8fbe21d0f6537a0bc2f02a3320ec5f07"

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
