@echo off
echo ��EmbeddedAndControlTranining���³���
git remote update origin_http
git pull origin_http master
git reset --hard HEAD
echo "������ǰ�汾��Ϣ����"
git tag
pause