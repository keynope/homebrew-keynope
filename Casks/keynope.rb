cask "keynope" do
  version "1.8.6"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "42f94a4ce5be08cd245db90e817b95faee758dbc562087c14821c7c60004605c",
         intel: "19ac9f4809137ac481ca26526d9bcafcddeb7b6e8bb1308131ae42d3460b743f"

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
