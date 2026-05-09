cask "cgui-visual" do
  version "0.2.3"
  sha256 "d814cc4b8412b893da35533cf89fdac8acdb5cf83a8f8ea191c7b86d3b0d0535"

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
