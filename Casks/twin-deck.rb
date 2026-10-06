cask "twin-deck" do
  version "0.5.0"
  sha256 "cfb5c16acaf77b2a17a833c619dc5481ea9fe471a69fe741a98dc0ac7d2f11a6"

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
