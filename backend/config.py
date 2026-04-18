"""
数据库配置文件

使用说明：
1. 复制本文件为 config.local.py
2. 在 config.local.py 中填写真实的数据库配置
3. config.local.py 不会被提交到 Git（已在 .gitignore 中配置）
"""

# 默认配置（开发环境示例）
DB_CONFIG = {
    "host": "localhost",
    "port": 3306,
    "user": "your_username",
    "password": "your_password",
    "database": "your_database",
    "charset": "utf8mb4",
}

# 尝试加载本地配置（覆盖默认配置）
try:
    from config_local import DB_CONFIG as LOCAL_DB_CONFIG
    DB_CONFIG.update(LOCAL_DB_CONFIG)
except ImportError:
    pass
