@echo off

::统计学习人数和人员======================================================
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
echo 【当前参与学习总人数】：%BranchLength%
echo 【当前参与学习的人员】——————————————————————————————————————————
setlocal enabledelayedexpansion
for /f "tokens=1 delims=" %%i in (%TEMP_FILE%) do (
    set GetBranchName=%%i
	echo !GetBranchName!|findstr "_Learning" >nul
	if !errorlevel!==0 (
		echo !GetBranchName!
	)
)
DEL %TEMP_FILE%


::创建个人学习分支======================================================
:PROGRAM_CREATE_BRANCH
set /p User=【创建个人学习分支】请输入你的名字(例：WuJiaHong)：

set BranchName=%User%_Learning
if defined User (
	git branch !BranchName!>nul 2>nul
	if !errorlevel!==0 (
		echo 【创建结果】SUCCESS，分支“!BranchName!”创建成功！！！
	) else (
		echo 【创建结果】ERROR，分支“!BranchName!”已经存在！！！
	)
) else (
	echo 【创建结果】ERROR，名字为空！！！
	GOTO PROGRAM_END
)


::切换学习分支======================================================
:PROGRAM_SWITCH_BRANCH
::set /p Switch=【是否切换到该分支？（y/n）】：
::if %Switch%==y (

git checkout !BranchName!
if !errorlevel!==0 (
	echo 【切换结果】SUCCESS：分支切换成功！！！
) else (
	echo 【切换结果】ERROR：分支切换失败，请查看错误信息！！！
)
	
::)
echo 【当前分支】“%BranchName%”

::程序结束======================================================
:PROGRAM_END
pause