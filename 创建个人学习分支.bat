@echo off

::ͳ��ѧϰ��������Ա======================================================
set TEMP_FILE=_temp_.txt
git branch --list >> %TEMP_FILE%
set /a BranchLength=0
setlocal enabledelayedexpansion
for /f %%i in (%TEMP_FILE%) do (
    set GetBranchName=%%i
	echo !GetBranchName!|findstr "_Learning" >nul
	if !errorlevel!==0 (
		set /a BranchLength+=1
	)
)
echo ����ǰ����ѧϰ����������%BranchLength%
echo ����ǰ����ѧϰ����Ա��������������������������������������������������������������������������������������
setlocal enabledelayedexpansion
for /f %%i in (%TEMP_FILE%) do (
    set GetBranchName=%%i
	echo !GetBranchName!|findstr "_Learning" >nul
	if !errorlevel!==0 (
		echo !GetBranchName!
	)
)
DEL %TEMP_FILE%

::��������ѧϰ��֧======================================================
set /p ip=����������ѧϰ��֧���������������(����WuJiaHong)��

set BranchName=%ip%_Learning

git branch %BranchName%>nul 2>nul

if %errorlevel%==0 (
	echo �����������SUCCESS����֧��%BranchName%�������ɹ�������
) else (
	echo �����������ERROR����֧��%BranchName%���Ѿ����ڣ�����
)

::�л�ѧϰ��֧======================================================
set /p Switch=���Ƿ��л����÷�֧����y/n������
if %Switch%==y (

	git checkout !BranchName!
	if !errorlevel!==0 (
		echo ���л������SUCCESS���л��ɹ�������
	) else (
		echo ���л������ERROR���л�ʧ�ܣ���鿴������Ϣ������
	)
	
)
echo ����ǰ��֧����%BranchName%��

pause