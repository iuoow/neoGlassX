# 开源发布计划

## 1. 推荐首发版本

```text
v0.2.0-alpha.1 — Architecture Preview
```

该版本用于公开：

- 设计系统总体架构
- 五类 Product Profile
- 中文规范初稿
- 开源治理与贡献方式
- Token 和 Figma 的后续方向

不应宣称：

- 已提供稳定组件库
- 已完成生产验证
- 已通过安全或无障碍认证
- 已拥有完整 Figma Kit
- 已与任何 Agent 项目建立官方合作

---

## 2. 当前仓库身份与待确认事项

已配置：

- Owner：`iuoow`
- 仓库：`https://github.com/iuoow/neoGlassX`
- 维护者与 CODEOWNERS：`@iuoow`
- 安全报告入口：GitHub Private Vulnerability Reporting
- Copyright：`iuoow and contributors`
- CITATION：GitHub alias `iuoow`

仍须确认：

- 社区行为准则的私密举报渠道
- 许可证权利边界
- Logo 和社交预览图

---

## 3. GitHub 仓库设置

### 基础信息

**Repository name**

```text
neoGlassX
```

**Description**

```text
Open design system for trustworthy AI agents, enterprise software, data platforms, operations, and immersive product experiences.
```

**Website**

```text
https://github.com/iuoow/neoGlassX
```

**Topics**

```text
design-system
ai-agent
agent-ui
enterprise-ui
data-visualization
observability
glassmorphism
design-tokens
accessibility
figma
```

### 建议启用

- [ ] Issues
- [ ] Discussions
- [ ] Private vulnerability reporting
- [ ] Dependency graph
- [ ] Dependabot alerts
- [ ] Secret scanning
- [ ] Push protection，若账户计划支持
- [ ] Branch ruleset
- [ ] Require pull request before merge
- [ ] Require review from CODEOWNERS
- [ ] Require signed commits，可在社区成熟后评估
- [ ] Automatically delete head branches
- [ ] Release notes generation

### 默认分支规则

建议保护 `main`：

- 禁止直接 Push
- 至少 1 位 Reviewer
- 文档或 Token 关键目录要求 CODEOWNER
- 所有必需检查通过后合并
- 禁止强制 Push
- 管理员是否豁免需明确记录

---

## 4. 社区入口设计

### Discussions 分类

```text
Announcements
General
Ideas
Design Reviews
Show and Tell
Q&A
Translations
```

### Issues 标签

```text
area:agent
area:enterprise
area:finance-data
area:operations
area:marketing
area:tokens
area:figma
area:docs
area:governance
a11y
security
design-proposal
good-first-issue
help-wanted
breaking-change
needs-research
needs-decision
```

### 第一期适合公开的 Issue

1. 翻译 README 为完整英文版本
2. 审核 Agent Run 状态机
3. 建立 DTCG 2025.10 Token 目录
4. 建立 Token 命名词汇表
5. 增加高对比主题建议
6. 设计 Approval Card 线框图
7. 设计 Execution Timeline 线框图
8. 梳理金融数据时效与来源模式
9. 梳理 Incident Workspace 信息架构
10. 建立文档链接检查
11. 建立术语一致性检查
12. 设计 GitHub Social Preview

---

## 5. 发布内容

### Release 标题

```text
NeoGlass X v0.2.0-alpha.1 — Architecture Preview
```

### Release 摘要

```text
This architecture preview introduces the shared core and five product
profiles for AI agent workbenches, enterprise applications, finance and
data platforms, operations, and immersive marketing experiences.

The release is documentation-first. Public token APIs, a production
component library, and the Figma kit are not stable or complete yet.
```

### 社交媒体短文案

**中文**

```text
NeoGlass X 开源预览发布：一套面向 AI Agent、企业系统、金融数据、
运维可观测与沉浸式产品体验的开放设计系统。

首个版本聚焦架构、可信 Agent 交互、人工审批、数据可信度和多场景 Profile。
```

**English**

```text
Introducing NeoGlass X: an open design system for trustworthy AI agents,
enterprise software, data platforms, operations, and immersive product
experiences.
```

---

## 6. 社交预览图建议

GitHub 推荐使用清晰的社交预览图片。建议输出：

```text
1280 × 640 px
PNG
小于 1 MB
实体暗色背景
```

画面结构：

```text
左侧：
NeoGlass X
Experience System

中部：
Core → Agent / Enterprise / Data / Ops / Launch

右侧：
透明层叠面板或 Agent 执行轨迹
```

避免：

- 大量小字号
- 过度透明
- 使用尚未获得授权的第三方 Logo
- 把 OpenClaw 或 Hermes Logo 放在主视觉中
- 只依赖绿色发光表达品牌

---

## 7. 分阶段发布

### Stage 0 — Private Review

- 权利人和许可证确认
- 名称初筛
- 联系渠道就绪
- 文档内部评审
- 清理客户信息和第三方资产

### Stage 1 — Public Architecture Preview

- 发布 `0.2.0-alpha.1`
- 开启 Discussions
- 创建 10–15 个清晰 Issue
- 邀请设计、前端、Agent 安全和无障碍贡献者评审

### Stage 2 — Token and Figma Preview

- DTCG Token
- Schema 和校验
- Figma Community 预览
- 参考页面
- 迁移策略

### Stage 3 — Implementation Preview

- CSS primitives 或 Web Components
- 示例应用
- 自动化测试
- 性能基线
- 无障碍基线

### Stage 4 — Stable Release Preparation

- 公共 API 冻结
- 安全评审
- 无障碍审计
- 许可证扫描
- 商标和品牌确认
- OpenSSF Best Practices 自评
- `1.0.0-rc.1`

---

## 8. 发布验收清单

### 法律与品牌

- [ ] 许可证文本完整
- [ ] 双许可证范围明确
- [ ] 所有图片、字体、图标和示例有来源
- [ ] 名称完成目标市场检索
- [ ] 商标文件明确允许和禁止的使用
- [ ] 第三方项目名称只用于描述，不暗示背书

### 社区

- [ ] README
- [ ] CONTRIBUTING
- [ ] CODE_OF_CONDUCT
- [ ] SECURITY
- [ ] SUPPORT
- [ ] GOVERNANCE
- [ ] Issue Forms
- [ ] Pull Request Template
- [ ] Maintainers 与 CODEOWNERS

### 质量

- [ ] Markdown 链接检查
- [ ] `scripts/Test-Repository.ps1` 已通过
- [ ] `scripts/Test-Repository.ps1 -Release` 已通过
- [ ] 最终变更后已运行 `scripts/Update-Manifest.ps1`
- [ ] 拼写和术语检查
- [ ] Token 格式检查
- [ ] 无敏感信息
- [ ] 无失效占位符
- [ ] ZIP 或 Release Asset 可正常解压
- [ ] 文档目录与 README 一致

### 安全

- [ ] Private Vulnerability Reporting 已开启
- [ ] 安全邮箱可用
- [ ] SECURITY.md 与仓库设置一致
- [ ] 不在公开 Issue 模板中引导披露漏洞
- [ ] 示例中没有真实 Secret 或凭证

---

## 9. 发布后的 30 天重点

- 记录常见问题
- 给 Issue 快速分类
- 保持路线图透明
- 发布第一次社区会议或异步设计评审
- 将争议较大的设计决策转为 RFC
- 补充英文入口
- 确认贡献者署名
- 根据实际贡献量调整治理机制
