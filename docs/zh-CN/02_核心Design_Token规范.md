# 核心 Design Token 规范

> **版本**：v0.2  
> **状态**：Architecture Preview；规范优先，非稳定组件 API  
> **更新日期**：2026-07-29  
> **适用范围**：AI Agent 工作台、企业系统、金融与数据平台、运维与可观测平台、官网、概念产品与发布会  


## 1. Token 架构

采用四层结构：

```text
Primitive Token
→ Semantic Token
→ Component Token
→ Product Profile Mapping
```

示例：

```text
green.500
→ color.action.primary.default
→ button.primary.background.default
```

组件不得直接依赖 Primitive Token。Profile 只能映射语义或组件 Token，不得复制一套页面级颜色和尺寸。

## 2. 配置模型与支持矩阵

```text
用户偏好：Theme = light | dark | high-contrast
用户偏好：Density = compact | standard | comfortable | presentation
用户偏好：Motion = none | reduced | productive | expressive
用户偏好：Transparency = none | reduced | full
体验等级：Experience = solid | glass | immersive
Profile：Product = agent | enterprise | finance | ops
```

`Risk = r0 | r1 | r2 | r3 | r4` 不是主题轴。它属于 Action、Tool Call 和 Approval 的业务语义，控制文案、审批、审计和二次确认，不能以页面级 `data-risk` 属性替代。

首版只承诺以下可验证预设：

| 预设 | Theme / Density | Experience | 说明 |
|---|---|---|---|
| Agent Workbench | Dark / Compact | Solid，局部 Subtle Glass | 默认参考实现 |
| Enterprise | Light 或 Dark / Compact | Solid | 表格、表单和审批优先 |
| Finance & Data | Dark / Compact | Solid | 精度和对比优先 |
| Ops | Dark / Compact | Solid | 异常和实时状态优先 |
| Marketing | Dark 或 Light / Comfortable | Glass / Immersive | 独立品牌交付物，渐进降级 |

HTML 示例：

```html
<html
  data-theme="dark"
  data-density="compact"
  data-experience="solid"
  data-product="agent"
  data-motion="productive"
  data-transparency="reduced"
>
```

## 3. 颜色语义

### 3.1 表面与前景成对定义

```text
color.surface.canvas
color.on-surface.canvas.primary
color.on-surface.canvas.secondary

color.surface.default
color.on-surface.default.primary
color.on-surface.default.secondary

color.surface.raised
color.on-surface.raised.primary

color.surface.overlay
color.on-surface.overlay.primary
```

不得只定义 `text-secondary = rgba(...)` 而不说明适用背景。

### 3.2 品牌与业务状态分离

```text
color.brand.*
color.action.*
color.status.success.*
color.status.info.*
color.status.warning.*
color.status.danger.*
color.status.progress.*
color.risk.r0..r4
```

品牌绿不得直接映射为成功、盈利或在线。

### 3.3 推荐暗色基础值

| Token | 值 | 用途 |
|---|---:|---|
| `surface.canvas` | `#050706` | 页面背景 |
| `surface.sunken` | `#080B09` | 列表与看板容器 |
| `surface.default` | `#0D110F` | 默认表面 |
| `surface.raised` | `#121714` | 浮起表面 |
| `surface.overlay` | `#18201B` | 浮层 |
| `brand.400` | `#2EF27E` | 品牌强调 |
| `brand.500` | `#00D968` | 主操作候选色 |
| `status.success` | `#20C997` | 成功 |
| `status.info` | `#5B8CFF` | 信息 |
| `status.warning` | `#F5B942` | 警告 |
| `status.danger` | `#FF6262` | 错误与危险 |
| `status.progress` | `#9B7BFF` | 进行中 |

最终值必须对具体前景—背景组合进行对比度测试。

## 4. 密度 Token

| Token | Compact | Standard | Comfortable | Presentation |
|---|---:|---:|---:|---:|
| `control.height.sm` | 28 | 32 | 36 | 40 |
| `control.height.md` | 32 | 36 | 40 | 48 |
| `row.height` | 36 | 44 | 52 | 64 |
| `card.padding` | 12 | 16 | 20 | 28 |
| `layout.gap` | 8 | 12 | 16 | 24 |

单位为 CSS px。触控设备需另行满足目标尺寸要求。

## 5. 排版 Token

```text
type.display
 type.page-title
 type.section-title
 type.card-title
 type.body
 type.body-compact
 type.caption
 type.code
 type.metric
```

数字默认启用：

```css
font-variant-numeric: tabular-nums lining-nums;
```

金融数据可额外定义：

```text
type.numeric.amount
 type.numeric.percent
 type.numeric.timestamp
 type.numeric.identifier
```

## 6. 玻璃与材质 Token

```text
material.none
material.subtle
material.raised
material.focus
material.immersive
```

每个材质包含：

- 背景不透明度；
- 模糊半径；
- 饱和度；
- 边框；
- 内高光；
- 降级实体色；
- 最低对比度组合。

生产系统默认 `none / subtle`，官网可使用 `raised / focus / immersive`。

## 7. 动效 Token

```text
motion.duration.instant = 80ms
motion.duration.fast = 120ms
motion.duration.standard = 180ms
motion.duration.panel = 240ms
motion.duration.page = 320ms
motion.duration.immersive = 480–800ms
```

```text
motion.ease.standard
motion.ease.enter
motion.ease.exit
motion.ease.emphasized
```

`reduced` 模式保留必要的状态连续性，但移除镜头移动、视差、漂浮、弹簧和持续呼吸。

## 8. 风险 Token

```text
risk.r0 = 读取公开信息
risk.r1 = 创建草稿或本地产物
risk.r2 = 修改内部资源
risk.r3 = 外发、删除、发布或生产写入
risk.r4 = 财务、权限、密钥或不可逆关键操作
```

风险 Token 同时控制：

- 颜色；
- 图标；
- 审批级别；
- 文案详细度；
- 是否需要二次确认；
- 审计记录要求。

## 9. Token 命名规范

```text
category.role.variant.state
```

示例：

```text
color.action.primary.hover
color.surface.agent-run.blocked
border.approval.risk-r3
motion.tool-call.expand
space.data-grid.cell-x
```

禁止包含页面名称、临时业务名称和颜色外观词，例如 `dashboardGreen`、`prettyGlass`。主题差异通过 alias 或 theme mapping 表达，禁止使用 `surface-default-dark` 作为稳定语义 Token。

## 10. 变更规则

- 修改 Primitive 值属于 Patch；
- 修改语义映射可能属于 Minor；
- 删除或改变 Token 角色属于 Major；
- 每次变更必须生成视觉对比、对比度报告和受影响组件清单。
