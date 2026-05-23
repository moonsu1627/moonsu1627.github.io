# moonsu studio — blog

GitHub Pages source for [moonsu1627.github.io](https://moonsu1627.github.io/).

- 빌드: Hugo (extended) v0.140.0
- 테마: [PaperMod](https://github.com/adityatelange/hugo-PaperMod)
- 자동 배포: `.github/workflows/hugo.yaml` (main push → 빌드 → Pages 배포)

## 운영

- 콘텐츠 원본: 별도 워크스페이스 `c:\AI\moonsu-studio` (signal-driven 큐레이션 loop)
- 검증된 글(`05-verified.md` PASS 본)을 `content/posts/<날짜>-<슬러그>.md`로 변환·커밋
- main에 push되면 GitHub Actions가 자동 빌드·배포

## 로컬 프리뷰 (선택)

```bash
hugo server -D
```
