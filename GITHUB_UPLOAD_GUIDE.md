# GitHub 上传指南

## 📦 准备上传的文件

以下文件是开源版本需要上传的：

```
380-platform-visualization/
├── backend/
│   ├── __init__.py
│   ├── main.py              # 已脱敏（使用 config.py）
│   ├── config.py            # 配置文件管理
│   └── config_local.example.py  # 配置示例
├── data/
│   └── README.md            # 数据目录说明
├── dashboard.html           # 主前端应用
├── 380平台可视化系统.html    # 单文件版本（可选）
├── import_xlsx.py           # 数据导入脚本（已脱敏）
├── start_servers.py         # 启动脚本
├── QUICK_START.bat          # Windows 快速启动
├── README.md                # 项目说明
├── LICENSE                  # MIT 开源协议
├── CHANGELOG.md             # 更新日志
├── CONTRIBUTING.md          # 贡献指南
├── requirements.txt         # Python 依赖
└── .gitignore               # Git 忽略配置
```

## 🚫 不上传的文件（已包含在 .gitignore）

- `380平台－数据源.xlsx` - 原始数据文件
- `config_local.py` - 本地数据库配置（含密码）
- `__pycache__/` - Python 缓存
- `.env` - 环境变量文件
- `*.log` - 日志文件

## 🚀 上传步骤

### 1. 创建 GitHub 仓库

1. 登录 GitHub
2. 点击右上角 "+" → "New repository"
3. 填写信息：
   - Repository name: `380-platform-visualization`（或其他名称）
   - Description: `基于 FastAPI 的数据可视化与异常告警系统`
   - 选择 "Public"（公开）或 "Private"（私有）
   - 勾选 "Add a README file"（可选）
   - 勾选 "Add .gitignore" → 选择 "Python"
4. 点击 "Create repository"

### 2. 本地初始化并上传

```bash
# 进入项目目录
cd 380-platform-visualization

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: 380 Platform Visualization System"

# 关联远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/yourusername/380-platform-visualization.git

# 推送
git push -u origin main
```

### 3. 验证上传

1. 打开 GitHub 仓库页面
2. 确认所有文件都已上传
3. 检查 README 是否正常显示
4. 确认敏感数据没有泄露

## ⚠️ 安全注意事项

### 上传前检查清单

- [ ] 没有上传 `.xlsx` 数据文件
- [ ] 没有上传含密码的配置文件
- [ ] `backend/main.py` 使用的是 `config.py` 导入配置
- [ ] `.gitignore` 已包含敏感文件类型

### 如果不小心上传了敏感数据

1. **立即删除文件**
   ```bash
   git rm 380平台－数据源.xlsx
   git commit -m "Remove sensitive data"
   git push
   ```

2. **清除 Git 历史**（如果已提交到历史记录）
   ```bash
   # 使用 BFG Repo-Cleaner 或 git-filter-branch
   git filter-branch --force --index-filter \
   'git rm --cached --ignore-unmatch 380平台－数据源.xlsx' \
   --prune-empty --tag-name-filter cat -- --all
   ```

3. **强制推送**
   ```bash
   git push origin --force --all
   ```

## 📝 发布 Release（可选）

1. 在 GitHub 仓库页面点击 "Releases"
2. 点击 "Create a new release"
3. 填写版本号（如 `v1.0.0`）
4. 填写发布说明
5. 点击 "Publish release"

## 🔗 后续维护

### 更新代码

```bash
# 添加更改
git add .

# 提交
git commit -m "feat: 添加新功能"

# 推送
git push
```

### 处理 Issues 和 PR

1. 定期检查 Issues 页面
2. 及时回复用户问题
3. 审核 Pull Request
4. 合并优质贡献

## 📞 需要帮助？

- GitHub 文档：https://docs.github.com/cn
- Git 教程：https://www.liaoxuefeng.com/wiki/896043488029600

---

**注意**：本指南假设你已经安装了 Git。如果未安装，请先下载安装：https://git-scm.com/downloads
