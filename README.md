# NeoGlass Experience System

> 面向 AI Agent、企业系统、金融与数据平台、运维与可观测产品，以及沉浸式品牌体验的开放设计系统。

[English](./README.en.md) · [体系架构](./ARCHITECTURE.md) · [中文文档](./docs/zh-CN/README.md) · [路线图](./ROADMAP.md) · [参与贡献](./CONTRIBUTING.md) · [安全政策](./SECURITY.md)

**当前版本：`0.2.0-alpha.1`**  
**成熟度：Experimental / Specification-first**  
**主要语言：简体中文，英文内容正在建设**

---

## 项目简介

NeoGlass Experience System，简称 **NeoGlass X** 或 **NGES**，是一套面向复杂 AI 与企业级产品的开放设计系统。

它不只描述一种暗色玻璃拟态风格，而是把以下内容组织为一个可扩展体系：

- 品牌视觉基础
- 核心产品设计系统
- AI Agent 工作台 Profile
- 大型企业应用 Profile
- 金融与数据平台 Profile
- 运维与可观测平台 Profile
- 官网、概念产品与发布会 Profile
- AI 权限、人工审批与审计模式
- 数据可视化、无障碍、国际化和性能规范
- Figma、Design Token 与前端工程协作规则

Neo-Glass 在本项目中是一种**可调节的体验能力**，而不是所有业务界面的默认装饰。高密度业务系统可以采用 Solid 模式，官网和发布会则可以采用 Glass 或 Immersive 模式。

项目的首要差异化方向是**可信 Agent 执行体验**：让用户看见计划、工具调用、风险、审批、证据和产物，而不是只得到一个聊天结果。企业、金融、数据和运维规范用于将这一核心能力接入不同的业务语境。

---

## 为什么创建这个项目

现有设计系统通常擅长通用企业组件，但复杂 AI Agent 产品还需要处理：

- Agent、Session、Run、Plan、Step 和 Tool Call
- 人工审批、权限边界和外部副作用
- Skill、Memory、Model、Node、Sandbox 与 Artifact
- 多 Agent 协作、任务交接、失败恢复和执行追踪
- 数据来源、时效、精度、审计和可解释性
- 告警、事件、日志、指标、链路与 Runbook
- 产品应用与官网宣传之间完全不同的密度和动效策略

NeoGlass X 尝试建立一套兼顾**可信执行、企业效率、数据精确性、可观测性与品牌表达**的开放方法。

---

## 适用范围

| Profile | 主要场景 | 默认体验建议 |
|---|---|---|
| Agent Workbench | OpenClaw、Hermes Agent 类工作台、Agent Gateway、Agent IDE | 中高密度、低至中玻璃、执行过程优先 |
| Enterprise | 大型企业后台、审批、组织、权限、业务流程 | 高密度、实体表面、低动效 |
| Finance & Data | 金融终端、数据管理、数据仓库、分析平台 | 极高精度、强数据来源、低装饰 |
| Operations | 运维、AIOps、监控、告警、事件响应 | 异常优先、实时状态、夜间友好 |
| Marketing & Launch | AI 产品官网、概念产品、发布会、品牌展示 | 强品牌、可选 3D、表达型动效、渐进降级 |

> 本项目与 OpenClaw、Hermes Agent 及其维护组织不存在官方隶属或背书关系；这些名称仅用于描述参考产品类型。

---

## 当前包含的内容

```text
Brand Foundation
        ↓
Core Product System
        ↓
Product Profiles
        ↓
Product-specific Implementations
```

### 设计系统文档

中文规范位于 [`docs/zh-CN`](./docs/zh-CN/)：

1. 产品与品牌设计原则
2. 核心 Design Token 规范
3. 核心组件设计规范
4. AI Agent 工作台设计规范
5. 大型企业系统设计规范
6. 金融与数据系统设计规范
7. 运维与可观测平台设计规范
8. 官网与发布会视觉规范
9. AI 安全、权限与人工审批规范
10. 数据可视化规范
11. 无障碍与国际化规范
12. 性能与降级策略
13. Figma 与前端工程规范
14. 设计系统治理与版本管理
15. 场景选择与交付检查表
16. 官方参考资料索引

### 开源项目基础设施

本仓库同时提供：

- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `SECURITY.md`
- `GOVERNANCE.md`
- `ROADMAP.md`
- `CITATION.cff`
- Issue Forms 与 Pull Request 模板
- 双许可证结构
- DCO 贡献签署方式
- Design Token 示例目录
- Figma、官网、示例和品牌资产占位规范

---

## 快速开始

当前版本是**规范优先**的文档项目，不需要安装依赖。

```bash
git clone https://github.com/iuoow/neoGlassX.git
cd neoGlassX
```

从以下入口开始阅读：

```text
README.md
→ docs/zh-CN/README.md
→ docs/zh-CN/01_产品与品牌设计原则.md
→ 选择对应的 Product Profile
→ docs/zh-CN/15_场景选择与交付检查表.md
```

> 仓库地址与 GitHub 维护者已配置；公开 Release 前仍须确认安全与社区行为准则的私密联系渠道。

---

## 体系架构与可支持组合

NeoGlass X 不承诺所有维度都可以自由组合。为避免不可测试的组合爆炸，配置被分为四类：

| 类型 | 内容 | 使用方式 |
|---|---|---|
| 用户偏好 | Theme、Density、Motion、Transparency | 可由系统或用户选择 |
| 体验等级 | Solid、Glass、Immersive | 由 Profile 规定允许范围 |
| Product Profile | Agent、Enterprise、Finance、Ops | 提供受支持的预设映射 |
| 风险语义 | R0–R4 | 绑定 Action、Tool Call、Approval，不绑定整页 |

首个参考预设是 `agent-workbench/dark/compact/solid`；`glass` 仅用于有限浮层和低风险非关键区域。完整契约、默认值、降级规则和计划中的组合见 [`ARCHITECTURE.md`](./ARCHITECTURE.md)。

---

## Design Token 方向

项目计划以 **Design Tokens Community Group 2025.10 稳定规范**作为交换格式基础，并使用 JSON Schema 进行项目级约束和验证。

当前 [`tokens`](./tokens/) 目录只提供结构示例，不代表稳定 API。`1.0.0` 之前，Token 名称、层级和格式都可能调整。

---

## 项目状态

### 已完成

- 多场景设计系统架构
- 中文规范初稿
- Agent、企业、金融、运维和官网 Profile
- AI 权限与人工审批风险模型
- 开源仓库基础文件
- 初步许可证与治理建议
- Dark / High Contrast Token 构建输出、浏览器变量与 Token 契约检查
- Agent Run Workspace 可运行静态参考页
- 无障碍测试样例与结构性检查脚本
- 静态文档首页与英文核心入口
- Figma Community Kit 蓝图、Variables 映射与发布清单

### 正在建设

- 完整英文规范翻译
- 可编辑、可发布的 Figma `.fig` Community 文件
- 文档网站的全文搜索、版本化与双语导航
- 更多 Product Profile 的参考实现与辅助技术实测

### 尚未提供

- 稳定的前端组件包
- npm、PyPI 或其他包管理器发布物
- 完整 Figma 文件
- SLA 或商业支持承诺

---

## 路线图

| 版本 | 目标 |
|---|---|
| `0.2.x` | 完成开源结构、文档架构和治理基础 |
| `0.3.x` | DTCG 2025.10 Token、Schema、Lint 与转换策略 |
| `0.4.x` | Figma Kit、核心页面模板和设计资产 |
| `0.5.x` | Framework-agnostic CSS primitives 或 Web Components 探索 |
| `0.6.x` | Agent 与 Enterprise 参考实现 |
| `0.7.x` | Finance、Data 与 Operations 参考实现 |
| `0.8.x` | 文档网站、英文翻译和社区案例 |
| `0.9.x` | API 冻结、审计、迁移指南和候选版本 |
| `1.0.0` | 稳定公共 API、稳定治理和正式发布 |

详细内容见 [`ROADMAP.md`](./ROADMAP.md)。

---

## 参与贡献

欢迎以下类型的贡献：

- 设计原则与信息架构
- Agent、企业、数据和运维交互模式
- Design Token 与 Schema
- 无障碍评审和测试
- 中文或英文文档
- Figma 组件与页面模板
- 参考实现、示例和自动化工具
- 安全、隐私和人工审批模式
- 官网、发布会和品牌体验案例

重大架构变更请先提交 **Design Proposal / RFC Issue**。贡献前请阅读：

- [`CONTRIBUTING.md`](./CONTRIBUTING.md)
- [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md)
- [`GOVERNANCE.md`](./GOVERNANCE.md)

本项目采用 DCO。提交时请使用：

```bash
git commit -s -m "docs: improve agent approval guidance"
```

---

## 安全问题

不要在公开 Issue 中披露未修复漏洞、密钥、真实客户数据或可被直接利用的 Agent 攻击链。

请阅读 [`SECURITY.md`](./SECURITY.md)，并在发布仓库前配置：

- GitHub Private Vulnerability Reporting
- 真实安全联系邮箱
- 受支持版本范围
- 安全公告与协调披露流程

---

## 许可证

本项目建议采用双许可证：

- **代码、Token、Schema、脚本和自动化工具**：Apache License 2.0，见 [`LICENSE`](./LICENSE)
- **文档、图表和非商标设计说明**：Creative Commons Attribution 4.0 International，见 [`LICENSE-DOCS`](./LICENSE-DOCS)

项目名称、Logo、产品标识和商标不自动包含在上述授权中，见 [`TRADEMARKS.md`](./TRADEMARKS.md)。
具体目录与资产的预期边界见 [`LICENSE-MAP.md`](./LICENSE-MAP.md)。

> 许可证结构是项目启动建议，不构成法律意见。正式发布前应由权利人确认所有素材的授权边界。

---

## 引用

仓库包含 [`CITATION.cff`](./CITATION.cff)。发布前请补充真实作者、仓库 URL、发布日期和可选 DOI。

建议引用名称：

```text
NeoGlass Experience System Contributors.
NeoGlass Experience System, version 0.2.0-alpha.1.
```

---

## 名称与品牌状态

**NeoGlass Experience System** 是当前推荐的工作名称：

- 项目简称：`NeoGlass X`
- 英文缩写：`NGES`
- 仓库名：`neoGlassX`
- 中文名：`NeoGlass AI 与企业体验设计系统`

初步网络检索未发现同名的主流开源设计系统，但 “NeoGlass / Neo Glass” 已被多个不相关产品使用。正式公开前仍需完成 GitHub、包管理器、域名和目标司法辖区商标检索。详见 [`PROJECT_NAMING.md`](./PROJECT_NAMING.md)。

---

## 支持与社区

当前处于早期阶段，建议使用：

- GitHub Discussions：方案讨论、问答和案例分享
- GitHub Issues：可复现问题和明确的改进任务
- Security Advisory：安全漏洞
- Design Proposal：架构、Token 或治理变更

详细分流规则见 [`SUPPORT.md`](./SUPPORT.md)。

---

## 致谢

本项目的方法参考了 W3C Design Tokens Community Group、GitHub Community Standards、WCAG、NIST AI RMF、OWASP、Carbon、Fluent、PatternFly、Grafana 等公开规范和设计系统实践。参考资料见 [`docs/OPEN_SOURCE_REFERENCES.md`](./docs/OPEN_SOURCE_REFERENCES.md)。

---

## 免责声明

本项目提供设计规范、参考实现和示例，不保证适合任何特定生产环境。金融、医疗、安全、权限和生产运维场景需要结合组织政策、法规、威胁模型和专业评审独立验证。
