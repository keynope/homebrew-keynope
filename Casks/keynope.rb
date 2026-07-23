cask "keynope" do
  version "0.1.3"
  arch arm: "arm64", intel: "amd64"

  sha256 arm:   "6ddf3ba48b9252b7f3b9444d5e4d5d9c5ba0a57d40bce60b682a17c9eb7ea033",
         intel: "ddaf44b5da00ebdbdb6e1c5ee93afd3ebd38af0014a764eea5a2a34044e2b4d3"

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
