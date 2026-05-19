# casamia-vite-js

이 프로젝트는 업로드된 CRA build 결과물과 sourcemap을 바탕으로 복원한 Vite + JavaScript 버전입니다.

## 포함된 내용
- `src/*.jsx` : sourcemap 기반 복원 및 TS/TSX → JS/JSX 변환
- `src/App.css`, `src/index.css` : CSS sourcemap 기반 복원
- `public/favicon.ico`, `manifest.json`, `robots.txt`

## 빠진 내용
- `/img/...` 계열 실제 이미지 정적 자산은 업로드되지 않아 포함되지 않았습니다.
- 따라서 개발 서버는 실행 가능하더라도 이미지 경로는 404가 날 수 있습니다.

## 실행
```bash
npm install
npm run dev
```

## 배포 경로
기존 앱이 `/casamia` basename 을 사용하고 있어 `vite.config.js`의 `base`도 `/casamia/`로 맞췄습니다.
루트(`/`) 배포로 바꾸려면 다음 둘을 함께 수정하세요.
- `vite.config.js`의 `base`
- `src/main.jsx`의 `<BrowserRouter basename="/casamia">`
