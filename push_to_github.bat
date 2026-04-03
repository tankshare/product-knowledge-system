@echo off
REM 自动推送脚本 - 市场部经理产品知识体系

echo ========================================
echo 市场部经理产品知识体系 - 自动推送
echo ========================================
echo.

REM 切换到项目目录
cd /d %~dp0

REM 添加所有新文件
echo [1/3] 添加新文件到 Git...
git add .

REM 提交变更
echo [2/3] 提交变更...
set /p commit_msg="请输入提交说明（直接回车使用默认）: "
if "%commit_msg%"=="" set commit_msg=Update: 自动更新知识体系内容
git commit -m "%commit_msg%"

REM 推送到 GitHub
echo [3/3] 推送到 GitHub...
git push origin main

echo.
echo ========================================
echo 推送完成！
echo 访问链接查看最新内容
echo ========================================
pause
