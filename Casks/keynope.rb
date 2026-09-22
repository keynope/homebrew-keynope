cask "keynope" do
  version "1.8.0"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "cd79c75de8b6d0e092722e4b443823766e5e4060fc51ab5d772df5d9db2bbbcf",
         intel: "a45ef7ee4712379a9469f837a054057e2ed3df6e163ea739c84559e0e44c2d6a"

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
