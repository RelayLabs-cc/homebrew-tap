cask "switchboard" do
  version "4.0.0"
  sha256 "a27b37edb19fd9721effc9b0b0eb15e429cfd3eb9ba6e110dcac6dce014f8d74"

  url "https://github.com/RelayLabs-cc/SwitchBoard-Releases/releases/download/v#{version}/SwitchBoard.zip"
  name "SwitchBoard"
  desc "Route every link to the right browser, profile, or app"
  homepage "https://relaylabs.cc/switchboard"

  livecheck do
    url "https://gist.githubusercontent.com/rohand7/9305b578693a44f61ad49e2d0db3e59b/raw/version.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: :ventura

  app "SwitchBoard.app"

  uninstall quit: "com.relaylabs.switchboard"

  zap trash: [
    "~/Library/Application Support/SwitchBoard",
    "~/Library/Logs/SwitchBoard.log",
    "~/Library/Preferences/com.relaylabs.switchboard.plist",
  ]
end
