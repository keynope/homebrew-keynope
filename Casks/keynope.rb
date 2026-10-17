cask "keynope" do
  version "1.8.5"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "39dbfb9b4bb5a7926e04bc6701a46da25271df68064c0acdc9c513ef7efb1391",
         intel: "1b309e5d597feec63cb218754c1f1ef6e4c2419001496c8c6ca9db13b1876f0f"

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
