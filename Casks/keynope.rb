cask "keynope" do
  version "0.1.2"

  on_arm do
    sha256 "3977a6935fe70c823b8b1f08bb6b09c35f76c259239c9600f3deecd52b7d2b3f"
    url "https://github.com/keynope/keynope/releases/download/#{version}/keynope-mac-arm64.tar.gz"
  end

  on_intel do
    sha256 "deb4e88825b48cbba71a138dd388fbb3c7db4892fb7951870b44fc8918b5b1b1"
    url "https://github.com/keynope/keynope/releases/download/#{version}/keynope-mac-amd64.tar.gz"
  end

  name "Keynope"
  desc "Retro terminal presentation tool"
  homepage "https://keynope.sh/"

  depends_on macos: :sonoma

  app "Keynope.app"
  binary "keynope"

  zap trash: [
    "~/Library/Application Support/Keynope",
    "~/Library/Containers/sh.keynope.app",
    "~/Library/Preferences/sh.keynope.app.plist",
    "~/Library/Saved Application State/sh.keynope.app.savedState",
  ]
end
