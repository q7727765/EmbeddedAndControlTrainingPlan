@echo off
echo ��EmbeddedAndControlTranining���³���
git fetch https://github.com/q7727765/EmbeddedAndControlTrainingPlan.git  -v --progress
git pull https://github.com/q7727765/EmbeddedAndControlTrainingPlan.git master
git reset --hard HEAD
echo "������ǰ�汾��Ϣ����"
git tag
pause