cask "supersonic" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"

  sha256 :no_check

  on_catalina :or_older do
    url "https://github.com/dweymouth/supersonic/releases/download/v#{version}/Supersonic-#{version}-mac-legacy-HighSierra-x64.zip"
  end

  on_big_sur :or_newer do
    url "https://github.com/dweymouth/supersonic/releases/download/v#{version}/Supersonic-#{version}-mac-#{arch}.zip"
  end

  name "Supersonic"
  desc "A lightweight and full-featured cross-platform desktop client for self-hosted music servers"
  homepage "https://github.com/dweymouth/supersonic"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Supersonic.app"

  zap trash: [
    "~/Library/Application Support/supersonic",
    "~/Library/Caches/supersonic",
  ]
end
