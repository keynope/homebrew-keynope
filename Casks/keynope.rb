cask "keynope" do
  version "0.1.3"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "39a20689ed7a58f9403a1110e8d3a08074e5e9428a6af7fc4e5040b90e10217c",
         intel: "122c38889e363cb37cd5436451352666e68c062b6b087a415e00dfbaff92583a"

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
