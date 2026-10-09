cask "uxxu" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "a958dfa347e0fc6b417b117f872a8c2e612e9ddeeda124a127189dc72f3b8ea0",
         intel: "4279df7b8f3dbf9ce7c98a970fa34a169d8bcf9386e78de1fcba2ccfcebb6f56"

  url "https://releases.uxxu.io/UXXU-#{version}-mac-#{arch}.dmg"
  name "UXXU"
  desc "C4 architecture workspace and Structurizr DSL viewer"
  homepage "https://uxxu.io/"

  livecheck do
    skip "Updated with signed desktop releases"
  end

  auto_updates true
  depends_on macos: :ventura

  app "UXXU.app"

  uninstall quit: "io.uxxu.desktop"

  zap trash: [
    "~/Library/Application Support/UXXU",
    "~/Library/Preferences/io.uxxu.desktop.plist",
    "~/Library/Saved Application State/io.uxxu.desktop.savedState",
  ]
end
