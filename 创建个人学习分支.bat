@echo off

::ͳ��ѧϰ��������Ա======================================================
:PROGRAM_LEARNER_CALCULATION
set TEMP_FILE=_temp_.txt
git branch --list >> %TEMP_FILE%
set /a BranchLength=0
setlocal enabledelayedexpansion
for /f "tokens=1 delims=" %%i in (%TEMP_FILE%) do (
    set GetBranchName=%%i
	echo !GetBranchName!|findstr "_Learning" >nul
	if !errorlevel!==0 (
		set /a BranchLength+=1
	)
)
echo ����ǰ����ѧϰ����������%BranchLength%
echo ����ǰ����ѧϰ����Ա��������������������������������������������������������������������������������������
setlocal enabledelayedexpansion
for /f "tokens=1 delims=" %%i in (%TEMP_FILE%) do (
    set GetBranchName=%%i
	echo !GetBranchName!|findstr "_Learning" >nul
	if !errorlevel!==0 (
		echo !GetBranchName!
	)
)
DEL %TEMP_FILE%


::��������ѧϰ��֧======================================================
:PROGRAM_CREATE_BRANCH
set /p User=����������ѧϰ��֧���������������(����WuJiaHong)��

set BranchName=%User%_Learning
if defined User (
	git branch !BranchName!>nul 2>nul
	if !errorlevel!==0 (
		echo �����������SUCCESS����֧��!BranchName!�������ɹ�������
	) else (
		echo �����������ERROR����֧��!BranchName!���Ѿ����ڣ�����
	)
) else (
	echo �����������ERROR������Ϊ�գ�����
	GOTO PROGRAM_END
)


::�л�ѧϰ��֧======================================================
:PROGRAM_SWITCH_BRANCH
::set /p Switch=���Ƿ��л����÷�֧����y/n������
::if %Switch%==y (

git checkout !BranchName!
if !errorlevel!==0 (
	echo ���л������SUCCESS����֧�л��ɹ�������
) else (
	echo ���л������ERROR����֧�л�ʧ�ܣ���鿴������Ϣ������
)
	
::)
echo ����ǰ��֧����%BranchName%��

::�������======================================================
:PROGRAM_END
pause