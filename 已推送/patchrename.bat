@echo off
title �����滻�ļ��� 
echo.
echo ��������������滻���ļ������ļ����������ļ����ļ�����
echo.
rem echo.&set /p file_type= ������Ҫ���ǰ׺���ļ�����(���磺png,txt)��
rem echo.&set /p add_str= ������Ҫ���ǰ׺���ļ����ַ�����������ֱ�ӻس�����
set file_type=md
set add_str=%date:~0,10%
setlocal enabledelayedexpansion
for /f "delims=" %%a in ('dir /a /b *.%file_type%') do (
ren "%%~a" "%add_str:/=-%-%%a")
echo.
echo �ļ����Ѿ�ȫ���޸���ϣ�
echo.