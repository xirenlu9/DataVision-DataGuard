# 更新日志

所有重要的更改都会记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
并且本项目遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

## [Unreleased]

### Added
- 新增用户认证系统（注册/登录/Token验证）
- 新增异常检测引擎（3σ原则 + 环比波动检测）
- 新增告警历史管理功能
- 新增全局搜索功能
- 新增白色主题 UI

### Changed
- 优化图表网格线颜色，适配白色背景
- 重构前端代码结构

## [1.0.0] - 2026-04-17

### Added
- 初始版本发布
- FastAPI 后端服务
- MySQL 数据库支持
- 数据导入功能（Excel）
- 多维度数据可视化
  - 行业分布统计
  - 省区排行
  - 月度趋势
  - 收入利润对比
- 响应式前端界面
- Chart.js 图表集成

### Features
- 数据概览 KPI 卡片
- 行业筛选功能
- 分页表格展示
- 实时时间显示
