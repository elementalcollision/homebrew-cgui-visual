cask "cgui-visual" do
  version "0.6.0"
  sha256 "1c34c7edb8877606e4c25b95686414bbc3ba62dc9db31c44909330fea3b9206b"

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
