cask "cgui-visual" do
  version "0.7.4"
  sha256 "535ff571124134dfbefa65c23e46817b6c9c42d6c89f5de425ecf2a64cd094b2"

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
