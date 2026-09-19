cask "keynope" do
  version "0.1.7"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "cd37ca7d94b0b6fbc10d2e5f3cbce91b40596d9086c2b4ad4391fd66d7e87e22",
         intel: "01708c3897aa2608dcf937067c691eac05395fb322801ec1d8eaf0c63be289a1"

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
