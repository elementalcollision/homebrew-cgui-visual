cask "cgui-visual" do
  version "0.2.1"
  sha256 "192b821d5a361ad659f5fc1950c4a6c2f01e7b21d5b93cad61d2148daa8cd10b"

  url "https://github.com/elementalcollision/cgui-visual/releases/download/v#{version}/cgui_#{version}_universal.dmg"
  name "cgui-visual"
  desc "Desktop GUI for Apple's container runtime"
  homepage "https://github.com/elementalcollision/cgui-visual"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "cgui.app"

  zap trash: [
    "~/.config/cgui-gui",
    "~/Library/Application Support/dev.cgui.gui",
    "~/Library/Caches/dev.cgui.gui",
    "~/Library/Logs/dev.cgui.gui",
    "~/Library/Preferences/dev.cgui.gui.plist",
    "~/Library/WebKit/dev.cgui.gui",
  ]
end
