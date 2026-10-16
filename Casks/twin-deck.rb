cask "twin-deck" do
  version "0.7.2"
  sha256 "4c24d6d47655d5caa894e2060cabb287078b49bbd66046262aa04a9553457eb8"

  url "https://github.com/gyuha/twin-deck/releases/download/v#{version}/twin-deck-#{version}-macos-arm64.zip"
  name "Twin Deck"
  desc "키보드 중심의 듀얼 패널 파일 관리자"
  homepage "https://github.com/gyuha/twin-deck"

  auto_updates true
  depends_on arch: :arm64

  app "Twin Deck.app"
  # 터미널에서 td 폴더 로 앱을 연다(이슈 #45). 링크 이름이 td라서 실행 파일이 스스로 터미널에서 떨어져 나온다.
  binary "#{appdir}/Twin Deck.app/Contents/MacOS/twin-deck-desktop", target: "td"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Twin Deck.app"]
  end
end
