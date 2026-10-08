cask "uxxu" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "aa2f988b6c63a540811c0d8d8632d7ef9a88c4254169cdffc14d7e5f5b43f272",
         intel: "3489e6f3f8030cc66f4dfffee88924037c1a7040ba302947700be5ffb9dce8d8"

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
