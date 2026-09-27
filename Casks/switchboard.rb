cask "switchboard" do
  version "4.0.2"
  sha256 "d5b2e526e1925a5ea5b9e67239c22891eee9fe7a747c6e76180a3f3b43f7e207"

  url "https://github.com/RelayLabs-cc/SwitchBoard-Releases/releases/download/v#{version}/SwitchBoard.zip"
  name "SwitchBoard"
  desc "Route every link to the right browser, profile, or app"
  homepage "https://relaylabs.cc/switchboard"

  livecheck do
    url "https://gist.githubusercontent.com/rohand7/9305b578693a44f61ad49e2d0db3e59b/raw/version.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SwitchBoard.app"

  uninstall quit: "com.relaylabs.switchboard"

  zap trash: [
    "~/Library/Application Support/SwitchBoard",
    "~/Library/Logs/SwitchBoard.log",
    "~/Library/Preferences/com.relaylabs.switchboard.plist",
  ]
end
