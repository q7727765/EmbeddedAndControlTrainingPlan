@echo off
echo ��EmbeddedAndControlTranining���³���
git remote add origin_http https://github.com/q7727765/EmbeddedAndControlTrainingPlan.git
git remote update origin_http
git pull origin_http master
git reset --hard HEAD
echo "������ǰ�汾��Ϣ����"
git tag
pause