# Homebrew cask for Docket. On each release, bump `version` to match the repo's VERSION file
# and paste the DMG's sha256 (printed by scripts/make-app.sh after notarization).
# Install once tapped:  brew install --cask himalyansailor/tap/docket
cask "docket" do
  version "0.1.0"
  sha256 "8d71fb6a1b6654aa82b5b40918ed123016c01178df7ad207734bfe27a26e7376"

  url "https://github.com/himalyansailor/docket/releases/download/v#{version}/Docket.dmg"
  name "Docket"
  desc "Edge-dock companion showing AI subscription usage and quick widgets"
  homepage "https://github.com/himalyansailor/docket"

  depends_on macos: ">= :sonoma"

  app "Docket.app"

  zap trash: [
    "~/Library/Application Support/Docket",
    "~/Library/Preferences/dev.docket.app.plist",
  ]
end
