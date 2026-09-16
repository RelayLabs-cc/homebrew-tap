cask "switchboard" do
  version "3.1.1"
  sha256 "9579ab76e02d64228abb6ad2e9519a5d35b1487d701ecb2c01a64f723ab41cf9"

  url "https://github.com/rohand7/SwitchBoard-Releases/releases/download/v#{version}/SwitchBoard.zip"
  name "SwitchBoard"
  desc "Route every link to the right browser, profile, or app"
  homepage "https://relaylabs.cc/switchboard"

  livecheck do
    url "https://gist.githubusercontent.com/rohand7/9305b578693a44f61ad49e2d0db3e59b/raw/version.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :ventura"

  app "SwitchBoard.app"

  uninstall quit: "com.relaylabs.switchboard"

  zap trash: [
    "~/Library/Application Support/SwitchBoard",
    "~/Library/Logs/SwitchBoard.log",
    "~/Library/Preferences/com.relaylabs.switchboard.plist",
  ]
end
