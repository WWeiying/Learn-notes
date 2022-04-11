@echo off
title 批量替换文件名 
echo.
echo 本批处理可批量替换本文件所在文件夹下所有文件的文件名。
echo.
rem echo.&set /p file_type= 请输入要添加前缀的文件类型(例如：png,txt)：
rem echo.&set /p add_str= 请输入要添加前缀的文件名字符串（不变则直接回车）：
set file_type=md
set add_str=%date:~0,10%
setlocal enabledelayedexpansion
for /f "delims=" %%a in ('dir /a /b *.%file_type%') do (
ren "%%~a" "%add_str:/=-%-%%a")
echo.
echo 文件名已经全部修改完毕！
echo.