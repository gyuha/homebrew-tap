cask "keytest" do
  version "0.1.0"
  sha256 "1809012029fb86c8cd37e112ac99734fbd6316d54dae1164d65f2a5adfbba299"

  url "https://github.com/gyuha/keyboard-test/releases/download/v#{version}/KeyTest.dmg"
  name "KeyTest"
  desc "키 입력을 화면과 소리로 확인하는 키보드 테스트 앱"
  homepage "https://github.com/gyuha/keyboard-test"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "KeyTest.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/KeyTest.app"]
  end
end
