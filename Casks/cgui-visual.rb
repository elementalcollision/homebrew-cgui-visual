cask "cgui-visual" do
  version "0.5.3"
  sha256 "06be6844119610ea6701471e9ccbba3a3786fd156bc79c951f6139d73da2ee69"

  url "https://github.com/elementalcollision/cgui-visual/releases/download/v#{version}/cgui_#{version}_universal.dmg"
  name "cgui-visual"
  desc "Desktop GUI for Apple's container runtime"
  homepage "https://github.com/elementalcollision/cgui-visual"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

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
