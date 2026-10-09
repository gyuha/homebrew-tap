cask "markview" do
  version "0.2.2"
  sha256 "bdafe307e1302aea67ad8d7b3e8a9a47aab44d9a78d6e194f070db919f6f2052"

  url "https://github.com/gyuha/markview/releases/download/v#{version}/markview_#{version}_aarch64.dmg"
  name "markview"
  desc "Markdown 파일 뷰어"
  homepage "https://github.com/gyuha/markview"

  depends_on arch: :arm64

  app "markview.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/markview.app"]
  end
end
