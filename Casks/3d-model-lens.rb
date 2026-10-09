cask "3d-model-lens" do
  version "0.1.1"
  sha256 "2ff900bb240e2cdbcd8e559278be6f764a922af6df9e611ee868f9fcb9529d28"

  url "https://github.com/gyuha/3d-model-lens/releases/download/v#{version}/3D.Model.Lens_#{version}_aarch64.dmg"
  name "3D Model Lens"
  desc "작은 모델링 파일용 뷰어"
  homepage "https://github.com/gyuha/3d-model-lens"

  depends_on arch: :arm64

  app "3D Model Lens.app"

  # 공식 서명·공증을 거치지 않은 앱이다. 이 앱에 한해서만 격리를 해제한다.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/3D Model Lens.app"]
  end
end
