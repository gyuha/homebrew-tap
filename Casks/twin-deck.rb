cask "twin-deck" do
  version "0.6.3"
  sha256 "6b294aee3c7cd5c333025a8521476a4aea2644e3ac31578cd5f23c0f3c8cbe0c"

  url "https://github.com/gyuha/twin-deck/releases/download/v#{version}/twin-deck-#{version}-macos-arm64.zip"
  name "Twin Deck"
  desc "키보드 중심의 듀얼 패널 파일 관리자"
  homepage "https://github.com/gyuha/twin-deck"

  auto_updates true
  depends_on arch: :arm64

  app "Twin Deck.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Twin Deck.app"]
  end
end
