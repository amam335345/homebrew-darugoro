cask "darugoro" do
  version "1.1.0"
  sha256 "c54f761d5003827ed447c17dee34af18a48088050292e9a3e2194760dd8f965c"

  url "https://github.com/amam335345/darugoro-site/releases/download/v#{version}/DaruGoro-#{version}.dmg",
      verified: "github.com/amam335345/darugoro-site/"
  name "DaruGoro"
  desc "Control your DAW with a DualSense controller"
  homepage "https://darugoro.amamamam.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "DaruGoro.app"

  uninstall quit: "com.amamamam.DaruGoro"

  zap trash: [
    "~/Library/Application Support/DAWPad",
    "~/Library/Application Support/DaruGoro",
    "~/Library/Caches/com.amamamam.DaruGoro",
    "~/Library/Caches/com.amamamam.DAWPad",
    "~/Library/Preferences/com.amamamam.DaruGoro.plist",
    "~/Library/Preferences/com.amamamam.DAWPad.plist",
    "~/Library/Saved Application State/com.amamamam.DaruGoro.savedState",
    "~/Library/Saved Application State/com.amamamam.DAWPad.savedState",
  ]

  caveats <<~EOS
    初めて開いたあと、「システム設定 > プライバシーとセキュリティ > アクセシビリティ」で
    DaruGoro を許可してください。アプリを消したあとは、この一覧からも外してください。

    After the first launch, allow DaruGoro in
    System Settings > Privacy & Security > Accessibility.
    After uninstalling, remove it from that list as well.
  EOS
end
