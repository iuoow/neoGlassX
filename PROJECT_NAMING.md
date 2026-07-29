# 项目名称与品牌命名方案

## 1. 推荐名称

### 正式英文名称

```text
NeoGlass Experience System
```

### 中文名称

```text
NeoGlass AI 与企业体验设计系统
```

### 简称

```text
NeoGlass X
```

### 缩写

```text
NGES
```

### 推荐仓库名

```text
neoGlassX
```

### 一句话定位

**中文**

> 面向 Agent、企业系统、数据、运维与沉浸式产品体验的开放设计系统。

**English**

> An open design system for trustworthy AI agents, enterprise systems, data platforms, operations, and immersive product experiences.

### GitHub Description

```text
Open design system for trustworthy AI agents, enterprise software, data platforms, operations, and immersive product experiences.
```

### 推荐 Topics

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

---

## 2. 为什么推荐这个名称

### NeoGlass

延续现有项目的暗色、玻璃、空间层级和未来感视觉基因，但不把产品限制为单一 Glassmorphism 风格。

### Experience System

比 “UI Kit” 或 “Task Management Design System” 范围更准确，因为项目同时包含：

- 视觉与品牌
- 产品交互
- Agent 执行与审批
- 企业治理
- 数据可信度
- 运维事件响应
- 官网与发布会体验
- 工程和社区治理

### NeoGlass X

适合社交媒体、Logo、发布会和较短的品牌表达；`X` 可以代表 Experience、Extension 和 Cross-product，但正式文档仍使用完整名称。

---

## 3. 名称检索结论

截至 2026-07-29 的初步网络检索中，没有发现一个明显占据主流认知的、完全同名的开源设计系统。

但需要注意：

- `NeoGlass` 已被屏幕保护产品、冲浪装备和玻璃器皿等不相关产品使用。
- 单纯搜索引擎检索不能替代商标、公司名称、域名和软件包注册检索。
- 名称可以作为 `0.x` 阶段工作名称，但正式发布、注册域名或商业化前应完成法律检索。

参考：

- [NeoGlass 屏幕保护产品](https://marketing.3mk.pl/en/neoglass/)
- [NeoGlass Eco 冲浪装备](https://www.surffcs.com/pages/neoglass-eco)
- [NEO GLASS AIR 产品](https://dooa.jp/en/products/2025/04/neo-glass-air/)

---

## 4. 曾考虑但不推荐的名称

| 名称 | 结论 | 原因 |
|---|---|---|
| AgentGlass | 不推荐 | 过度限制为 Agent，且已有相近项目与概念使用 |
| AxiomGlass | 不推荐 | 已有艺术工作室和相关商业使用 |
| AgentCanvas | 不推荐 | 当前 Agent 生态中同名或近似使用较多 |
| Neo-Glass Enterprise UI | 不推荐 | 太长，难以覆盖官网和品牌体验 |
| Agentic Enterprise Design System | 备选 | 描述准确但品牌辨识度较弱 |
| TrustSurface Design System | 备选 | 强调可信界面，但与现有视觉资产连续性不足 |
| PrismLayer Experience System | 备选 | 更品牌化，但同样需要完整名称检索 |

---

## 5. 正式发布前的名称核验清单

- [ ] GitHub 仓库和组织名
- [ ] npm、PyPI、Maven、NuGet、crates.io 等计划使用的包名
- [ ] 主域名及常见后缀
- [ ] 社交媒体账号
- [ ] 中国商标数据库
- [ ] USPTO、EUIPO、WIPO 等目标市场数据库
- [ ] 同行业产品与公司名称
- [ ] Logo 图形近似性
- [ ] 项目缩写 `NGES` 的潜在冲突
- [ ] 中文名称是否存在近似项目
- [ ] 律师或专业商标代理复核

---

## 6. 命名回退策略

在 `1.0.0` 前保持品牌层与 Token、组件、Profile 命名解耦：

```text
品牌名：NeoGlass X
技术命名：core / agent / enterprise / finance / ops / marketing
```

这样即使项目在正式发布前更名，也无需大规模修改公共 Token 和组件 API。

---

## 7. 品牌语气

### 应当体现

- 可信
- 清晰
- 先进
- 冷静
- 精确
- 可解释
- 企业级
- 开放协作

### 避免

- 无边界的“全自动”
- 夸大 AI 能力
- 把发光和 3D 等同于智能
- 使用无法核验的安全或合规承诺
- 让概念演示与生产能力混淆
