cask "foliofold" do
  version "0.2.0"
  sha256 arm:   "6921ba93838a5a81756522541b454a66e48e4abb5c7b44f3baa79fdf357f7203",
         intel: "8b9867e54aad66ce4b53cfaa030eecbd77bf556740e0678fd0e6e53392b549ab"

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

  depends_on macos: :sequoia

  app "FolioFold.app"

  zap trash: [
    "~/Library/Preferences/app.foliofold.FolioFold.plist",
    "~/Library/Saved Application State/app.foliofold.FolioFold.savedState",
  ]
end
