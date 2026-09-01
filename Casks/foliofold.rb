cask "foliofold" do
  version "0.4.0"
  sha256 arm: "091d9069f6554df43f63f1229bc3e710e4f87eb71b7ffda7072bf9acbe3df000", intel: "4c0a845cd5e885ae4ef25217a52365f73289abe1f79ed35bbf3edc5a94fb685e"

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
