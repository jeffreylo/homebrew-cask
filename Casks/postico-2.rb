cask "postico-2" do
  version "9398"
  sha256 "cede47c34062087ccb74f3f5d2aeab089e7719b981f13f14b9b2a79f5c0f0fe9"

  url "https://eggerapps-downloads.s3.eu-west-1.amazonaws.com/postico-#{version}.dmg",
      verified: "eggerapps-downloads.s3.eu-west-1.amazonaws.com"
  name "Postico 2 Preview"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico2/"

  livecheck do
    url "https://releases.eggerapps.at/postico2/download"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "Postico 2.app"

  zap trash: [
    "~/Library/Containers/Postico",
  ]
end
