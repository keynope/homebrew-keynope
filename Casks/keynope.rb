cask "keynope" do
  version "0.1.5"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "94130b152044a680363c19991f27720fc1b15cb2ff6fcbc5b800ccbe3c730963",
         intel: "94392a889387ef816fad242bd0f85f23bbd2ad0d57ce5bdfc2bc9947b41bb377"

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
