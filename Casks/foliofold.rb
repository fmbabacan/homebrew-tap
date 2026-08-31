cask "foliofold" do
  version "0.1.0"
  sha256 arm: "d202c25031596a1f8600c02aa37bf863605ea9014977cdd0cbc9cb1afdcc6c57",
         intel: "8ff01d9c28c426c801afd84adccd6626156282184cc27c8fb66f1e88458b62fd"

  on_arm do
    url "https://github.com/fmbabacan/FolioFold/releases/download/v#{version}/FolioFold-#{version}-arm64.zip"
  end
  on_intel do
    url "https://github.com/fmbabacan/FolioFold/releases/download/v#{version}/FolioFold-#{version}-x86_64.zip"
  end

  name "FolioFold"
  desc "Native, privacy-focused PDF and structured document workspace"
  homepage "https://github.com/fmbabacan/FolioFold"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FolioFold.app"

  zap trash: [
    "~/Library/Preferences/app.foliofold.FolioFold.plist",
    "~/Library/Saved Application State/app.foliofold.FolioFold.savedState",
  ]
end
