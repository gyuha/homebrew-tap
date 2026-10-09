cask "booklet" do
  version "0.1.1"
  sha256 "9ec69e23cf956664ba666e0628d2b1750290048126be2cb519d2c7f43e874287"

  url "https://github.com/gyuha/booklet/releases/download/v#{version}/booklet-#{version}-macos-arm64.zip"
  name "booklet"
  desc "가벼운 epub 뷰어"
  homepage "https://github.com/gyuha/booklet"

  depends_on arch: :arm64

  app "booklet.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/booklet.app"]
  end
end
