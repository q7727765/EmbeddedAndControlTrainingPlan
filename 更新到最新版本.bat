@echo off
echo 【EmbeddedAndControlTranining更新程序】
git remote update
git pull origin master
git reset --hard HEAD
echo "——当前版本信息——"
git tag
pause