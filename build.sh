#!/bin/sh
# Encrypt src/index.html into ./index.html for GitHub Pages. Prompts for the password.
cd "$(dirname "$0")" && npx --yes staticrypt@3.5.4 src/index.html -d . --short --remember 0 \
  -t password_template.html \
  --template-title "東半島三人行" \
  --template-instructions "輸入密碼看行程" \
  --template-placeholder "密碼" \
  --template-button "打開行程" \
  --template-remember "記住我，這支手機不用再輸入" \
  --template-error "密碼不對，再試一次" \
  --template-toggle-show "顯示密碼" \
  --template-toggle-hide "隱藏密碼"
