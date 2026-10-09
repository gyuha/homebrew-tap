# gyuha Homebrew tap

자체 Homebrew Cask 저장소입니다. Apple Silicon(arm64) Mac에서 설치하세요.

| 앱 | 설명 | 설치 |
|----|------|------|
| [Twin Deck](https://github.com/gyuha/twin-deck) | 키보드 중심의 듀얼 패널 파일 관리자 | `brew install --cask gyuha/tap/twin-deck` |
| [markview](https://github.com/gyuha/markview) | Markdown 파일 뷰어 | `brew install --cask gyuha/tap/markview` |
| [Panel Viewer](https://github.com/gyuha/panel-viewer) | 만화·웹툰 뷰어 | `brew install --cask gyuha/tap/panel-viewer` |
| [3D Model Lens](https://github.com/gyuha/3d-model-lens) | 작은 모델링 파일용 뷰어 | `brew install --cask gyuha/tap/3d-model-lens` |
| [booklet](https://github.com/gyuha/booklet) | 가벼운 epub 뷰어 | `brew install --cask gyuha/tap/booklet` |

앱은 서명·공증되지 않았습니다. 각 Cask가 **해당 앱에 한해** 설치 후 `com.apple.quarantine`을 제거해 Gatekeeper 검사를 우회합니다. 출처를 신뢰하는 경우에만 설치하세요. Intel Mac은 지원하지 않습니다.

## Twin Deck

앱 안에서 자동 업데이트를 확인하고 설치합니다. Cask에는 `auto_updates true`가 설정되어 있어 일반 `brew upgrade` 대상에서 제외됩니다.

### 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/twin-deck/releases)의 `twin-deck-<버전>-macos-arm64.zip`을 내려받습니다.
2. ZIP의 SHA-256을 릴리스에 표시된 값과 비교합니다.
3. Twin Deck 저장소에서 `node scripts/update-homebrew-cask.mjs --version <버전> --zip <ZIP 경로> --out <tap 저장소>/Casks/twin-deck.rb`를 실행합니다.
4. Cask 변경을 검토·검증한 뒤 이 저장소에 별도 커밋합니다.

## markview

앱 내 자동 업데이트가 없으므로 `brew upgrade --cask markview`로 갱신합니다.

### 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/markview/releases)의 `markview_<버전>_aarch64.dmg`를 내려받아 `shasum -a 256`으로 SHA-256을 구합니다.
2. `Casks/markview.rb`의 `version`과 `sha256`을 갱신합니다.
3. 검증 후 이 저장소에 별도 커밋합니다.

## Panel Viewer

앱 내 자동 업데이트가 없으므로 `brew upgrade --cask panel-viewer`로 갱신합니다.

### 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/panel-viewer/releases)의 `Panel.Viewer_<버전>_aarch64.dmg`를 내려받아 `shasum -a 256`으로 SHA-256을 구합니다.
2. `Casks/panel-viewer.rb`의 `version`과 `sha256`을 갱신합니다.
3. 검증 후 이 저장소에 별도 커밋합니다.

## 3D Model Lens

앱 내 자동 업데이트가 없으므로 `brew upgrade --cask 3d-model-lens`로 갱신합니다.

### 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/3d-model-lens/releases)의 `3D.Model.Lens_<버전>_aarch64.dmg`를 내려받아 `shasum -a 256`으로 SHA-256을 구합니다.
2. `Casks/3d-model-lens.rb`의 `version`과 `sha256`을 갱신합니다.
3. 검증 후 이 저장소에 별도 커밋합니다.

## booklet

앱 내 자동 업데이트가 없으므로 `brew upgrade --cask booklet`으로 갱신합니다.

### 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/booklet/releases)의 `booklet-<버전>-macos-arm64.zip`을 내려받아 `shasum -a 256`으로 SHA-256을 구합니다.
2. `Casks/booklet.rb`의 `version`과 `sha256`을 갱신합니다.
3. 검증 후 이 저장소에 별도 커밋합니다.
