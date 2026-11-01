#!/usr/bin/env bash
# 一次完成：建立公開 GitHub 倉庫 sim-exchange → 推上去 → 開啟 GitHub Pages
set -e
GH=/c/Users/a0909/tools/gh/bin/gh.exe
cd /c/Users/a0909/sim-exchange-site
$GH repo create sim-exchange --public --description "模擬交易所：十家交易所外觀的模擬交易練習（真實行情＋歷史回放）" --source . --remote origin --push
$GH api -X POST repos/a0979989987-coder/sim-exchange/pages -f "source[branch]=main" -f "source[path]=/" >/dev/null
echo
echo "完成。約 1～2 分鐘後可以開：https://a0979989987-coder.github.io/sim-exchange/"
