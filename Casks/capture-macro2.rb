cask "capture-macro2" do
  version "0.2.4"
  sha256 "077557bd03a99acdc23716d1a1e1a9d7e5d0b3fa04202583808bebc589289cb0"

  url "https://github.com/gyuha/capture-macro2/releases/download/#{version}/CaptureMacro-#{version}.dmg"
  name "CaptureMacro"
  desc "화면 캡처와 마우스·키보드 자동화를 결합한 매크로 도구"
  homepage "https://github.com/gyuha/capture-macro2"

  depends_on arch: :arm64

  app "CaptureMacro.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/CaptureMacro.app"]
  end
end
