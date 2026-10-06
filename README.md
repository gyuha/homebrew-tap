# Twin Deck Homebrew tap

[Twin Deck](https://github.com/gyuha/twin-deck)의 자체 Homebrew Cask 저장소입니다. Apple Silicon(arm64) Mac에서 설치하세요.

```sh
brew install --cask gyuha/tap/twin-deck
```

앱은 서명·공증되지 않았습니다. Cask가 **Twin Deck.app에 한해** 설치 후 `com.apple.quarantine`을 제거해 Gatekeeper 검사를 우회합니다. 출처를 신뢰하는 경우에만 설치하세요. Intel Mac은 지원하지 않습니다.

앱 안에서 자동 업데이트를 확인하고 설치합니다. Cask에는 `auto_updates true`가 설정되어 있어 일반 `brew upgrade` 대상에서 제외됩니다.

## 새 버전 반영

1. [공개 릴리스](https://github.com/gyuha/twin-deck/releases)의 `twin-deck-<버전>-macos-arm64.zip`을 내려받습니다.
2. ZIP의 SHA-256을 릴리스에 표시된 값과 비교합니다.
3. Twin Deck 저장소에서 `node scripts/update-homebrew-cask.mjs --version <버전> --zip <ZIP 경로> --out <tap 저장소>/Casks/twin-deck.rb`를 실행합니다.
4. Cask 변경을 검토·검증한 뒤 이 저장소에 별도 커밋합니다.
