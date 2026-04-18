@echo off
chcp 65001 >nul
echo ========================================
echo   380平台可视化系统 - 快速启动
echo ========================================
echo.
echo 正在启动服务...
echo.

:: 检查 Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到 Python，请先安装 Python 3.x
    pause
    exit /b 1
)

:: 启动服务
echo [1/2] 启动后端服务 (端口 8000)...
start "后端服务" cmd /k "cd /d %~dp0 && python backend\main.py"

timeout /t 3 /nobreak >nul

echo [2/2] 启动前端服务 (端口 8765)...
start "前端服务" cmd /k "cd /d %~dp0 && python -m http.server 8765"

timeout /t 2 /nobreak >nul

echo.
echo ========================================
echo   服务启动完成！
echo ========================================
echo.
echo 访问地址:
echo   - 前端页面: http://localhost:8765/dashboard.html
echo   - 后端API:  http://localhost:8000
echo   - API文档:  http://localhost:8000/docs
echo.
echo 按任意键打开浏览器...
pause >nul

start http://localhost:8765/dashboard.html
