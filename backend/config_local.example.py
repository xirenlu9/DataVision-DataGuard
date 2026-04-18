"""
本地数据库配置示例文件

使用步骤：
1. 复制本文件为 config_local.py
2. 修改下面的配置为你的真实数据库信息
3. config_local.py 不会被提交到 Git
"""

DB_CONFIG = {
    "host": "localhost",
    "port": 3306,
    "user": "root",
    "password": "your_password_here",
    "database": "stock_db",
    "charset": "utf8mb4",
}
