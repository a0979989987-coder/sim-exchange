@echo off
chcp 65001 >nul
rem 之後更新：把最新版本推上去（GitHub Pages 會自動更新）
cd /d C:\Users\a0909\sim-exchange-site
git push origin main
echo 已更新：https://a0979989987-coder.github.io/sim-exchange/
