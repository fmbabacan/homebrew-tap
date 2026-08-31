cask "foliofold" do
  version "0.3.0"
  sha256 arm:   "5a92eee18ff9844bec2c8c3a3f5d789b3c0062d7a4a95aac170ebc7e8b1e86b0",
         intel: "9b354e65a3aa1b5792ac8e0ce5617fad0dae1ac99064561ddf1e52c3021b5a06"

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
