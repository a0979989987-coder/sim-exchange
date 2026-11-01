@echo off
chcp 65001 >nul
rem 第一次發佈：建立公開 GitHub 倉庫 sim-exchange、推上去、開啟 GitHub Pages
cd /d C:\Users\a0909\sim-exchange-site
C:\Users\a0909\tools\gh\bin\gh.exe repo create sim-exchange --public --description "模擬交易所：十家交易所外觀的模擬交易練習（真實行情＋歷史回放）" --source . --remote origin --push
C:\Users\a0909\tools\gh\bin\gh.exe api -X POST repos/a0979989987-coder/sim-exchange/pages -f "source[branch]=main" -f "source[path]=/"
echo.
echo 完成。約 1～2 分鐘後可以開：https://a0979989987-coder.github.io/sim-exchange/
