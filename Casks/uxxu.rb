cask "uxxu" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "544d172e59a42f48108c127b2e0ce18330050619b77572438cd65baf38d03884",
         intel: "ae0a0051b0b6d062c09773060d83f4c30ef6145e2644a551cdee2f8d98eae106"

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
