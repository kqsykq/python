taskkill /F /IM redis-server.exe
taskkill /F /IM python.exe
start /b Redis-x64-3.2.100\redis-server.exe
start /b .\venv\Scripts\python.exe manage.py runserver
cd nginx
nginx -s stop
start nginx.exe
timeout /t 2 >nul
explorer "http://localhost:666"