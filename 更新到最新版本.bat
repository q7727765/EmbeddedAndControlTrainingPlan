@echo off
echo "【EmbeddedAndControlTranining更新程序】"
git pull https://github.com/q7727765/EmbeddedAndControlTrainingPlan.git master
git reset --hard HEAD
echo "——当前版本信息——"
git tag
pause