# 暗色 Neo-Glass 企业任务管理平台 UI 设计规范建议稿

> **文档版本**：v0.1  
> **文档状态**：方案确认稿，尚未进入最终视觉设计  
> **参考对象**：本次会话中上传的任务管理 Dashboard 截图  
> **推荐方向**：B — 产品化平衡版（Production Neo-Glass）  
> **适用产品**：AI Agent 工作台、任务管理平台、项目协作系统、知识管理平台、企业运营后台、数据分析平台

---

## 1. 文档目标

本规范用于将参考图中的暗色、玻璃拟态、三维空间感与企业级生产力界面结合，建立一套可用于后续 UI 设计、Figma 组件建设和前端开发的基础规则。

当前阶段重点解决以下问题：

1. 明确参考图的视觉风格与产品定位。
2. 保留参考图的品牌辨识度，同时提升可读性和操作效率。
3. 建立颜色、字体、间距、圆角、材质、阴影和动效规范。
4. 定义桌面端布局、响应式策略和核心组件清单。
5. 建立无障碍、性能与工程落地要求。
6. 列出进入正式 UI 设计前需要确认的关键决策。

---

## 2. 参考界面风格分析

### 2.1 风格定义

参考界面可以概括为：

> **Dark Neo-Glass Dashboard**  
> 暗色新玻璃拟态企业工作台

它融合了以下设计语言：

- 暗色企业级 Dashboard
- Glassmorphism 玻璃拟态
- Bento Grid 卡片布局
- 3D Spatial UI 空间化界面
- AI / Cyber 科技视觉
- Command Center 指挥中心式信息组织

### 2.2 视觉关键词

```text
高端
冷静
未来感
智能化
企业级
沉浸式
精密
空间感
低饱和
荧光强调
```

### 2.3 页面结构

参考图采用典型的三栏工作台结构：

| 区域 | 主要内容 | 用户任务 |
|---|---|---|
| 左侧导航 | 一级模块、工作区、账号信息 | 切换业务模块 |
| 中央工作区 | KPI、任务看板、3D 项目对象、时间轴 | 浏览与处理任务 |
| 右侧详情栏 | 任务详情、标签、AI 建议、操作按钮 | 查看详情并执行动作 |

这种结构适用于：

```text
选择业务模块
→ 浏览任务或对象
→ 选中具体对象
→ 查看详细信息
→ 执行编辑、完成、审批或 AI 辅助操作
```

---

## 3. 参考设计的优势

### 3.1 品牌识别度高

黑色背景与荧光绿色形成清晰的品牌锚点。中间绿色文件卡既表达当前选中状态，也承担品牌视觉中心的角色。

### 3.2 信息架构完整

导航、统计、列表、空间对象、时间轴和详情面板形成完整闭环，能够承载复杂的企业业务流程。

### 3.3 空间层级丰富

界面通过以下手段建立层级：

- 不同明度的表面
- 透明度与背景模糊
- 细描边和顶部高光
- 卡片遮挡与透视
- 绿色选中态
- 字号和字重变化
- 轻微阴影与内发光

### 3.4 视觉传播能力强

该风格非常适合：

- 产品官网首屏
- 产品发布会
- 概念 Demo
- 投融资演示
- 品牌宣传海报
- Behance / Dribbble 作品展示

---

## 4. 主要问题与优化方向

### 4.1 玻璃效果使用过多

参考图中大部分模块同时使用透明、模糊、渐变、反光和高光。实际产品长期使用时可能出现：

- 文字与背景边界不清
- 小字号内容可读性下降
- 信息密度受到限制
- 低性能设备渲染压力增加
- 不同显示器上的视觉表现不一致
- 页面缺少稳定、安静的阅读区域

#### 建议

采用以下比例：

```text
20% 品牌玻璃效果
80% 稳定实体表面
```

玻璃材质优先用于：

- 顶部导航
- Popover
- Modal
- 右侧详情抽屉
- 当前选中的重点对象
- 品牌展示模块

实体暗色表面优先用于：

- 表格
- 任务列表
- 看板列
- 表单
- 长文本
- 时间轴
- 数据密集型页面

---

### 4.2 中央 3D 文件卡不适合承载全部核心操作

3D 层叠卡片具有很强的展示效果，但存在以下限制：

- 难以快速扫描大量数据
- 文件名、状态和负责人展示空间有限
- 不利于批量选择、筛选和排序
- 不适合复杂拖拽操作
- 数据规模扩大后难以自然扩展
- 键盘和屏幕阅读器支持难度较高

#### 建议

保留 3D 视图，但重新定义其角色：

- 项目欢迎页
- 当前项目封面
- 项目阶段导航
- 空状态
- 工作区切换动画
- 高层概览模式

日常生产操作应提供：

- 列表视图
- 看板视图
- 网格视图
- 时间轴视图
- 3D 概览视图

---

### 4.3 次要文字对比度不足

参考图中大量标签、时间和说明文字采用低亮度灰色。实际办公显示器、低亮度屏幕或投影环境下，可能难以阅读。

#### 建议

普通正文默认达到 WCAG AA 对比度要求：

- 普通文字：至少 `4.5:1`
- 大字号或粗体文字：至少 `3:1`
- 重要图标、控件边界和状态提示：至少 `3:1`
- 键盘焦点指示器：与相邻颜色保持清晰差异

---

### 4.4 绿色语义过载

参考界面中的绿色同时承担：

- 品牌色
- 主操作
- 当前选中
- 正常状态
- 成功状态
- 时间轴进度
- AI 能力
- 在线状态

#### 风险

用户难以区分“这是品牌强调”还是“这是成功状态”。

#### 建议

将颜色拆分为两组语义。

**品牌与交互颜色**

- 品牌主色
- 主按钮
- 当前选中
- 焦点边框
- AI 强调

**业务状态颜色**

- 成功
- 信息
- 进行中
- 警告
- 错误
- 中性

状态不能仅依赖颜色，还应配合：

- 图标
- 文字
- 标签形状
- 描边形式
- 状态点样式

---

### 4.5 页面强调层级过多

KPI、3D 卡片、看板、时间轴和详情栏都具有较强视觉效果，容易形成“每个模块都很重要”的问题。

#### 建议建立三级强调

| 层级 | 名称 | 用途 | 表现 |
|---|---|---|---|
| L1 | 基础层 | 普通列表、表格、正文 | 实体暗色表面、弱边框 |
| L2 | 浮起层 | KPI、可交互卡片 | 略亮表面、轻阴影、顶部高光 |
| L3 | 聚焦层 | 当前对象、AI 结果、弹窗 | 品牌描边、玻璃材质、明确高光 |

> 单个页面建议最多只出现一个主要 L3 聚焦区域。

---

## 5. 推荐设计方向

### 5.1 方向定义

推荐采用：

> **Production Neo-Glass**  
> 产品化新玻璃拟态

### 5.2 建议比例

```text
企业生产力设计    60%
暗色玻璃科技感    25%
3D 品牌表达       10%
动效与光效         5%
```

### 5.3 设计目标

- 保留参考图的高端科技感
- 确保企业级信息密度
- 支持长时间使用
- 支持复杂业务扩展
- 适配普通办公设备
- 支持设计 Token 与多主题
- 满足基础无障碍要求
- 降低后续前端维护成本

---

## 6. 设计原则

### 6.1 Content First

内容与任务优先于装饰。视觉效果不能妨碍阅读、筛选、比较和操作。

### 6.2 Focused Intelligence

AI 能力只在需要判断、总结、生成或推荐的关键节点出现，不将所有模块都包装为 AI 功能。

### 6.3 Controlled Depth

空间层级必须具有语义。高层级表面代表浮层、当前焦点或临时任务，而不是纯装饰。

### 6.4 Calm Darkness

暗色界面应安静、舒适，避免大面积纯黑、纯白和过强荧光。

### 6.5 Consistent Feedback

相同交互使用相同状态、颜色、动效和反馈方式。

### 6.6 Accessible by Default

从第一版开始考虑对比度、键盘操作、可点击范围、减少动态效果和减少透明度。

---

## 7. 设计 Token 命名原则

建议采用语义化 Token，而不是在组件中直接使用固定颜色。

### 7.1 推荐结构

```text
类别.语义.状态
```

示例：

```text
color.bg.canvas
color.bg.surface.default
color.bg.surface.raised
color.text.primary
color.text.secondary
color.border.default
color.border.focus
color.action.primary.default
color.action.primary.hover
motion.duration.fast
radius.card.default
space.layout.section
```

### 7.2 Token 分层

```text
Primitive Token
→ Semantic Token
→ Component Token
```

示例：

```text
green.500
→ color.action.primary.default
→ button.primary.background.default
```

---

## 8. 色彩规范

### 8.1 基础背景

| Token | 建议值 | 用途 |
|---|---:|---|
| `color.bg.canvas` | `#050706` | 页面最底层背景 |
| `color.bg.sunken` | `#080B09` | 看板、列表容器背景 |
| `color.bg.surface.1` | `#0D110F` | 普通卡片 |
| `color.bg.surface.2` | `#121714` | 浮起卡片 |
| `color.bg.surface.3` | `#18201B` | Popover、详情面板 |
| `color.bg.overlay` | `rgba(12, 16, 14, 0.86)` | 弹窗和覆盖层 |

> 不建议只使用纯黑色加透明度构建所有表面，应为关键层级建立独立实体颜色。

### 8.2 品牌绿色

| Token | 建议值 | 用途 |
|---|---:|---|
| `color.brand.300` | `#6BFFA5` | 高亮文字、Focus Ring |
| `color.brand.400` | `#2EF27E` | 主品牌色 |
| `color.brand.500` | `#00D968` | 主按钮默认态 |
| `color.brand.600` | `#00AC52` | 主按钮按下态 |
| `color.brand.alpha.08` | `rgba(46, 242, 126, 0.08)` | 弱背景 |
| `color.brand.alpha.12` | `rgba(46, 242, 126, 0.12)` | 选中背景 |
| `color.brand.alpha.24` | `rgba(46, 242, 126, 0.24)` | 强调背景 |
| `color.brand.alpha.40` | `rgba(46, 242, 126, 0.40)` | 聚焦边框 |

### 8.3 文字颜色

| Token | 建议值 | 用途 |
|---|---:|---|
| `color.text.primary` | `rgba(255,255,255,0.92)` | 标题、正文重点 |
| `color.text.secondary` | `rgba(255,255,255,0.72)` | 普通正文 |
| `color.text.tertiary` | `rgba(255,255,255,0.52)` | 辅助信息 |
| `color.text.disabled` | `rgba(255,255,255,0.34)` | 禁用状态 |
| `color.text.inverse` | `#041008` | 绿色按钮上的文字 |

### 8.4 功能状态颜色

| 状态 | Token | 建议值 |
|---|---|---:|
| 信息 | `color.status.info` | `#5B8CFF` |
| 成功 | `color.status.success` | `#20C997` |
| 进行中 | `color.status.progress` | `#9B7BFF` |
| 警告 | `color.status.warning` | `#F5B942` |
| 错误 | `color.status.danger` | `#FF6262` |
| 中性 | `color.status.neutral` | `#8C9690` |

### 8.5 颜色使用规则

- 品牌绿色优先用于关键操作和当前焦点。
- 成功状态不得与品牌主色完全相同。
- 同一页面中高亮绿色面积建议控制在 `5%–10%`。
- 数据图表不得全部使用绿色色阶。
- 红色仅用于错误、危险、逾期或不可逆操作。
- 状态信息必须同时提供文字或图标。
- 禁止在大面积纯黑背景上直接使用高亮纯绿色正文。

---

## 9. 玻璃材质规范

### 9.1 Glass Subtle

用于顶部工具栏、导航背景和低优先级悬浮区域。

```css
.glass-subtle {
  background: rgba(14, 18, 16, 0.72);
  backdrop-filter: blur(12px) saturate(115%);
  -webkit-backdrop-filter: blur(12px) saturate(115%);
  border: 1px solid rgba(255, 255, 255, 0.07);
}
```

### 9.2 Glass Raised

用于 Popover、Dropdown、右侧详情面板和浮动工具区。

```css
.glass-raised {
  background: rgba(18, 23, 20, 0.82);
  backdrop-filter: blur(20px) saturate(120%);
  -webkit-backdrop-filter: blur(20px) saturate(120%);
  border: 1px solid rgba(255, 255, 255, 0.11);
}
```

### 9.3 Glass Focus

用于当前选中对象、AI 结果和重点展示模块。

```css
.glass-focus {
  background: rgba(16, 26, 20, 0.86);
  backdrop-filter: blur(24px) saturate(125%);
  -webkit-backdrop-filter: blur(24px) saturate(125%);
  border: 1px solid rgba(46, 242, 126, 0.36);
}
```

### 9.4 使用限制

- 同一可视区域内不建议超过 3 种玻璃层级。
- 表格与长列表不得使用高透明玻璃背景。
- 玻璃表面上的小字号文字必须重新测试对比度。
- 玻璃效果不能作为唯一的层级提示。
- 不在滚动列表中大量叠加实时模糊。

### 9.5 降级方案

```css
@supports not (backdrop-filter: blur(1px)) {
  .glass-subtle,
  .glass-raised,
  .glass-focus {
    backdrop-filter: none;
    background: #121714;
  }
}

@media (prefers-reduced-transparency: reduce) {
  .glass-subtle,
  .glass-raised,
  .glass-focus {
    backdrop-filter: none;
    background: #121714;
  }
}
```

> `prefers-reduced-transparency` 的浏览器支持程度需要在开发阶段验证；产品内部也可以提供“减少透明效果”开关。

---

## 10. 排版规范

### 10.1 字体栈

#### 中文与界面正文

```css
font-family:
  Inter,
  "PingFang SC",
  "Microsoft YaHei",
  "Noto Sans SC",
  system-ui,
  sans-serif;
```

#### 数字、编号与代码

```css
font-family:
  "JetBrains Mono",
  "SFMono-Regular",
  Consolas,
  monospace;
```

### 10.2 字号层级

| 类型 | 字号 | 行高 | 字重 | 用途 |
|---|---:|---:|---:|---|
| Display | 32px | 40px | 600 | 品牌展示、大型数据 |
| Page Title | 24px | 32px | 600 | 页面标题 |
| Section Title | 18px | 26px | 600 | 区块标题 |
| Card Title | 16px | 24px | 500–600 | 卡片标题 |
| Body | 14px | 22px | 400 | 默认正文 |
| Body Compact | 13px | 20px | 400 | 紧凑列表 |
| Caption | 12px | 18px | 400 | 标签、时间、辅助信息 |
| KPI | 28–36px | 40px | 500–600 | 统计数字 |

### 10.3 数字排版

```css
font-variant-numeric: tabular-nums;
```

适用于：

- KPI
- 日期
- 时间
- 金额
- 百分比
- 序号
- 任务编号

### 10.4 排版规则

- 正文不建议小于 13px。
- 12px 仅用于非关键辅助信息。
- 全大写英文仅用于极少量标签。
- 中文标题尽量不增加字符间距。
- 单行文本超过容器时使用省略号，并提供 Tooltip。
- 详情面板中的长文本行宽建议控制在 40–65 个中文字符以内。

---

## 11. 间距规范

### 11.1 基础间距序列

采用 `4px` 基础单位和 `8px` 主节奏：

```text
4 / 8 / 12 / 16 / 20 / 24 / 32 / 40 / 48 / 64
```

### 11.2 常用规则

| 场景 | 建议值 |
|---|---:|
| 图标与文字 | 8px |
| 标签水平内边距 | 8px |
| 标签垂直内边距 | 4px |
| 紧凑控件间距 | 8px |
| 常规控件间距 | 12px |
| 卡片内边距 | 16px / 20px |
| 详情面板内边距 | 20px / 24px |
| 区块间距 | 24px |
| 页面模块间距 | 32px |
| 页面水平安全边距 | 24px–40px |

### 11.3 语义化 Token

```text
space.1 = 4px
space.2 = 8px
space.3 = 12px
space.4 = 16px
space.5 = 20px
space.6 = 24px
space.8 = 32px
space.10 = 40px
space.12 = 48px
space.16 = 64px
```

---

## 12. 圆角规范

| Token | 数值 | 用途 |
|---|---:|---|
| `radius.xs` | 6px | 标签、状态点容器 |
| `radius.sm` | 8px | 输入框、小按钮 |
| `radius.md` | 12px | 菜单、列表项 |
| `radius.lg` | 16px | 普通卡片 |
| `radius.xl` | 20px | 大型面板、详情栏 |
| `radius.pill` | 999px | 胶囊按钮、筛选项 |

### 使用原则

- 数据密集组件优先使用 8–12px。
- 大型品牌卡片可使用 16–20px。
- 不建议所有组件统一使用超大圆角。
- 嵌套卡片的内层圆角应小于外层圆角。
- 同一组组件必须保持相同圆角等级。

---

## 13. 边框规范

| Token | 建议值 | 用途 |
|---|---:|---|
| `border.default` | `rgba(255,255,255,0.07)` | 普通边界 |
| `border.strong` | `rgba(255,255,255,0.12)` | 强边界 |
| `border.hover` | `rgba(255,255,255,0.18)` | Hover |
| `border.selected` | `rgba(46,242,126,0.36)` | 当前选中 |
| `border.focus` | `rgba(107,255,165,0.92)` | 键盘焦点 |
| `border.danger` | `rgba(255,98,98,0.56)` | 错误或危险 |

### 使用原则

- 普通卡片使用 1px 边框。
- 当前选中态优先使用绿色边框加轻背景，不使用大面积外发光。
- 错误输入应同时显示错误文字。
- 禁止使用低对比度边框表达关键表单状态。

---

## 14. 阴影与层级规范

### 14.1 Elevation 0 — Flat

```css
box-shadow: none;
```

适用于：

- 页面基础层
- 表格
- 看板列
- 普通内容容器

### 14.2 Elevation 1 — Raised

```css
box-shadow:
  0 8px 24px rgba(0, 0, 0, 0.28),
  inset 0 1px 0 rgba(255, 255, 255, 0.04);
```

适用于：

- KPI 卡片
- 普通浮起卡片
- 可点击对象

### 14.3 Elevation 2 — Overlay

```css
box-shadow:
  0 16px 48px rgba(0, 0, 0, 0.42),
  inset 0 1px 0 rgba(255, 255, 255, 0.06);
```

适用于：

- Dropdown
- Popover
- Drawer
- Modal

### 14.4 Elevation 3 — Focus

```css
box-shadow:
  0 20px 64px rgba(0, 0, 0, 0.52),
  0 0 24px rgba(46, 242, 126, 0.10),
  inset 0 1px 0 rgba(255, 255, 255, 0.08);
```

适用于：

- 当前核心对象
- AI 结果卡
- 3D 品牌展示

### 使用原则

- 暗色环境主要依靠表面明度和边框表达层级。
- 阴影用于辅助，不作为唯一层级提示。
- 禁止给所有卡片添加绿色发光。
- 高强度绿色光晕仅用于短时反馈或当前焦点。

---

## 15. 图标规范

### 15.1 图标风格

- 线性图标为主
- 默认线宽：1.5px
- 圆角端点
- 视觉尺寸统一
- 同一功能不得混用填充和线性风格

### 15.2 推荐尺寸

| 场景 | 尺寸 |
|---|---:|
| 紧凑列表 | 16px |
| 普通按钮 | 18px |
| 导航项 | 20px |
| 工具栏 | 20px |
| KPI 卡片 | 24px |
| 空状态 | 40–64px |

### 15.3 图标按钮

- 最小可点击区域：32×32px
- 推荐默认区域：36×36px 或 40×40px
- 必须提供可访问名称
- 无文字图标建议提供 Tooltip
- 危险操作使用明确图标与文字组合

---

## 16. 桌面端布局规范

### 16.1 1440px 基准布局

采用 12 列栅格：

| 项目 | 建议值 |
|---|---:|
| 页面水平边距 | 32px |
| 栅格间距 | 16px |
| 左侧导航 | 224–240px |
| 右侧详情栏 | 320–360px |
| 顶部工具栏 | 64px |
| 内容最小宽度 | 960px |

### 16.2 完整三栏结构

```text
┌────────────┬──────────────────────────────┬──────────────┐
│ 左侧导航    │ 主工作区                     │ 右侧详情栏    │
│ 224–240px  │ 自适应                       │ 320–360px    │
└────────────┴──────────────────────────────┴──────────────┘
```

### 16.3 主工作区建议分区

```text
页面标题与全局操作
→ KPI 统计卡
→ 筛选与视图切换
→ 任务列表 / 看板 / 3D 概览
→ 项目时间轴
```

### 16.4 信息密度模式

建议提供两种密度：

| 模式 | 行高 | 卡片间距 | 适用场景 |
|---|---:|---:|---|
| Comfortable | 44–48px | 16px | 默认、管理层用户 |
| Compact | 36–40px | 8–12px | 高频操作、专业用户 |

---

## 17. 响应式策略

### ≥ 1600px

- 完整三栏布局
- 右侧详情栏常驻
- 3D 概览可以完整展示
- KPI 卡片横向排列

### 1280–1599px

- 左侧导航保持完整
- 右侧详情栏支持收起
- 详情默认以 Drawer 形式出现
- KPI 可压缩宽度

### 1024–1279px

- 左侧导航收缩为图标模式
- 右侧详情使用覆盖式 Drawer
- 3D 视图缩减为卡片轮播或网格
- 时间轴支持横向滚动

### < 1024px

不建议等比例缩小桌面界面，应重新排列为：

```text
顶部导航
→ 页面标题和主要操作
→ KPI 横向滚动
→ 任务列表
→ 时间轴
→ 详情抽屉
```

---

## 18. 核心组件清单

### 18.1 导航组件

- App Sidebar
- Navigation Item
- Workspace Switcher
- Account Menu
- Top Search
- Command Palette
- Breadcrumb
- Tabs
- Segmented Control

### 18.2 数据展示组件

- KPI Card
- Status Card
- Task Row
- Task Group
- Kanban Column
- Project Card
- Timeline
- Progress Bar
- Activity Feed
- Empty State
- Skeleton
- Error State

### 18.3 操作组件

- Primary Button
- Secondary Button
- Ghost Button
- Danger Button
- Icon Button
- Split Button
- Dropdown
- Filter
- Sort
- Search Input
- Date Picker
- View Switcher

### 18.4 状态组件

- Badge
- Tag
- Avatar Status
- Notification Dot
- Priority Indicator
- Progress Indicator
- AI Generated Label
- Online / Offline State

### 18.5 AI 组件

- AI Insight Card
- AI Summary
- Suggested Action
- Confidence Indicator
- Sources / Citations
- Accept / Reject
- Regenerate
- AI Processing State
- Human Review Required
- AI Error / Retry

---

## 19. 关键组件规范

### 19.1 左侧导航

#### 尺寸

```text
宽度：224–240px
导航项高度：44px
左右内边距：12–16px
图标与文字间距：12px
```

#### 状态

- 默认：透明背景、次级文字
- Hover：浅色表面
- Selected：品牌弱背景 + 品牌边框或左侧指示条
- Focus：2px Focus Ring
- Disabled：降低透明度，不响应 Hover

#### 建议

- 一级导航不超过 8 项。
- 低频功能放入“更多”或设置区。
- 工作区切换与一级导航应有明显分隔。
- 当前账号状态放在底部固定区域。

---

### 19.2 KPI 卡片

#### 内容结构

```text
标题
→ 核心数字
→ 单位
→ 环比 / 同比
→ 图标或趋势
```

#### 建议尺寸

```text
最小宽度：180px
高度：104–120px
内边距：16–20px
```

#### 规则

- 单张卡片只表达一个主指标。
- 数值是视觉焦点。
- 正负趋势不能只靠红绿颜色。
- 趋势信息应提供箭头和文字。
- 卡片不建议同时包含复杂图表。

---

### 19.3 任务列表

#### 建议字段

```text
状态
任务编号
任务标题
优先级
负责人
截止时间
所属项目
标签
操作菜单
```

#### 行高

```text
Comfortable：48px
Compact：40px
```

#### 交互

- 单击：选中并打开右侧详情
- 双击：进入完整详情页，可选
- Hover：显示快捷操作
- 多选：显示批量操作栏
- 键盘：上下移动、Enter 打开、Space 选择

---

### 19.4 右侧详情栏

#### 建议宽度

```text
320–360px
```

#### 信息顺序

```text
类型与编号
→ 标题与状态
→ 简介
→ 负责人、项目、时间、优先级
→ 标签
→ AI 建议
→ 历史记录
→ 固定操作栏
```

#### 规则

- 核心操作固定在底部。
- 内容区域独立滚动。
- 危险操作不与主操作并列。
- AI 建议必须与真实业务字段有视觉区分。
- 编辑状态与阅读状态应明确区分。

---

### 19.5 3D 项目视图

#### 定位

```text
品牌概览视图，而非唯一业务操作视图
```

#### 适用场景

- 项目阶段总览
- 文件分类导航
- 项目成果展示
- 工作区欢迎页
- 空状态
- 视图切换动画

#### 限制

- 同时展示对象建议不超过 12 个。
- 必须提供列表视图替代。
- 不承担复杂批量操作。
- 3D 动效支持减少动态效果。
- 选中态同时使用位置、边框和文字提示。

---

## 20. 交互状态规范

每个可交互组件至少定义：

```text
Default
Hover
Pressed
Focused
Selected
Disabled
Loading
Success
Warning
Error
```

### 20.1 Focus Ring

```css
:focus-visible {
  outline: 2px solid rgba(107, 255, 165, 0.92);
  outline-offset: 2px;
}
```

### 20.2 状态优先级

当多个状态同时出现时，建议优先级为：

```text
Disabled
> Error
> Focused
> Pressed
> Selected
> Hover
> Default
```

### 20.3 加载状态

- 短加载使用局部 Spinner。
- 列表加载优先使用 Skeleton。
- 超过 2 秒应提供文字状态。
- AI 处理应显示当前阶段。
- 不阻塞无关区域操作。

---

## 21. 动效规范

### 21.1 动效类型

| 类型 | 用途 |
|---|---|
| Productive Motion | Hover、展开、列表变化、筛选 |
| Expressive Motion | 首次进入、品牌展示、关键成功反馈 |

### 21.2 时长

| 类型 | 时长 |
|---|---:|
| 微反馈 | 100–140ms |
| Hover / 状态切换 | 160–180ms |
| 下拉菜单 | 160–200ms |
| 面板展开 | 220–260ms |
| 页面转场 | 280–360ms |
| 3D 品牌动画 | 400–600ms |

### 21.3 缓动

```css
--ease-standard: cubic-bezier(0.2, 0, 0, 1);
--ease-enter: cubic-bezier(0, 0, 0.2, 1);
--ease-exit: cubic-bezier(0.4, 0, 1, 1);
```

### 21.4 推荐动效

- 卡片 Hover 上浮 2px
- 边框亮度渐变
- 详情面板平滑展开
- 时间轴当前节点轻微呼吸
- KPI 数字轻量过渡
- 视图切换时 3D 卡片展开与收拢
- AI 生成状态使用低速流光

### 21.5 禁止事项

- 高频闪烁
- 无限快速呼吸
- 大面积背景粒子持续运动
- 每个 Hover 都产生强烈缩放
- 大幅 Z 轴穿越动画
- 多个模块同时自动播放动效

### 21.6 减少动态效果

```css
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
```

---

## 22. 无障碍验收标准

### 22.1 对比度

- 普通文字：至少 `4.5:1`
- 大字号或粗体文字：至少 `3:1`
- 重要图标、输入边界、状态标记：至少 `3:1`
- Focus Ring：在不同表面上均清晰可见

### 22.2 键盘操作

- 所有操作均可通过键盘完成。
- Tab 顺序与视觉顺序一致。
- Drawer 和 Modal 打开后进行焦点管理。
- Esc 可关闭非关键浮层。
- 当前焦点不得被固定栏或半透明浮层遮挡。

### 22.3 可点击区域

- WCAG 2.2 AA 最低目标尺寸：24×24 CSS px，存在特定例外。
- 本产品桌面端推荐：32×32px。
- 主要操作推荐：36×36px 或 40×40px。

### 22.4 颜色与状态

- 状态不得只使用颜色表达。
- 在线、成功、错误、逾期等状态必须有文字或图标。
- 图表应支持图例、标签和数据表替代。
- 颜色不能成为筛选或识别信息的唯一手段。

### 22.5 缩放和文本

- 支持浏览器 200% 缩放。
- 文字放大后不遮挡关键操作。
- 不使用固定高度裁切长文本。
- Tooltip 不应成为获取关键信息的唯一方式。

---

## 23. 性能建议

### 23.1 模糊性能

- 避免在大型滚动区域使用多层 `backdrop-filter`。
- 避免在同一层叠上下文中叠加多个实时模糊面板。
- 低性能模式使用实体背景。
- 移动端默认减少模糊半径。

### 23.2 3D 性能

- 3D 对象数量控制在合理范围。
- 使用合成层时避免过多大尺寸纹理。
- 非当前视图停止动画。
- 提供静态图片或 2D 卡片降级方案。
- 性能不足时自动关闭景深和实时反射。

### 23.3 动画性能

优先动画属性：

```text
transform
opacity
```

谨慎使用：

```text
filter
backdrop-filter
box-shadow
width
height
top
left
```

---

## 24. 建议的页面状态

后续正式设计至少应覆盖：

1. 默认 Dashboard
2. 无任务空状态
3. 初次使用引导
4. 数据加载
5. 加载失败
6. 权限不足
7. 任务选中
8. 批量选择
9. 筛选结果为空
10. 右侧详情编辑
11. AI 生成中
12. AI 生成失败
13. AI 建议待确认
14. 危险操作确认
15. 网络断开
16. 低性能降级模式

---

## 25. Figma 文件结构建议

```text
00_Cover
01_Foundations
02_Tokens
03_Components
04_Patterns
05_Desktop
06_Responsive
07_States
08_AI_Components
09_Prototype
10_Dev_Handoff
```

### 25.1 Foundations

- Color
- Typography
- Spacing
- Radius
- Border
- Elevation
- Iconography
- Grid
- Motion

### 25.2 Components

建议采用：

```text
Component / Variant / State / Size
```

示例：

```text
Button / Primary / Default / Medium
Button / Primary / Hover / Medium
Button / Primary / Loading / Medium
TaskRow / Selected / Comfortable
SidebarItem / Selected / Default
```

---

## 26. 前端 Token 示例

```css
:root {
  --color-bg-canvas: #050706;
  --color-bg-sunken: #080b09;
  --color-bg-surface-1: #0d110f;
  --color-bg-surface-2: #121714;
  --color-bg-surface-3: #18201b;

  --color-text-primary: rgba(255, 255, 255, 0.92);
  --color-text-secondary: rgba(255, 255, 255, 0.72);
  --color-text-tertiary: rgba(255, 255, 255, 0.52);
  --color-text-disabled: rgba(255, 255, 255, 0.34);

  --color-brand-300: #6bffa5;
  --color-brand-400: #2ef27e;
  --color-brand-500: #00d968;
  --color-brand-600: #00ac52;

  --color-status-info: #5b8cff;
  --color-status-success: #20c997;
  --color-status-progress: #9b7bff;
  --color-status-warning: #f5b942;
  --color-status-danger: #ff6262;

  --border-default: rgba(255, 255, 255, 0.07);
  --border-strong: rgba(255, 255, 255, 0.12);
  --border-focus: rgba(107, 255, 165, 0.92);

  --radius-xs: 6px;
  --radius-sm: 8px;
  --radius-md: 12px;
  --radius-lg: 16px;
  --radius-xl: 20px;
  --radius-pill: 999px;

  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-5: 20px;
  --space-6: 24px;
  --space-8: 32px;
  --space-10: 40px;
  --space-12: 48px;
  --space-16: 64px;

  --motion-fast: 120ms;
  --motion-standard: 180ms;
  --motion-panel: 240ms;
  --motion-page: 320ms;

  --ease-standard: cubic-bezier(0.2, 0, 0, 1);
}
```

---

## 27. 三种可选设计方案

### A. 高还原视觉版

**参考图相似度：85%–90%**

适合：

- 产品官网
- 概念 Demo
- 发布会
- 投资演示
- 品牌宣传

特点：

- 大量玻璃材质
- 强 3D 空间感
- 强光效
- 信息密度较低
- 视觉传播优先

风险：

- 长时间使用容易疲劳
- 性能成本较高
- 复杂业务扩展能力较弱

---

### B. 产品化平衡版 — 推荐

**参考图相似度：60%–70%**

适合：

- SaaS 平台
- 项目管理系统
- AI Agent 工作台
- 企业协作平台
- 知识管理平台

特点：

- 保留暗色绿色品牌
- 控制玻璃效果使用范围
- 3D 作为特色概览模块
- 列表、看板和表格保证效率
- 支持组件库和多主题建设
- 兼顾品牌、可用性和工程成本

---

### C. 企业稳健版

**参考图相似度：35%–45%**

适合：

- 大型企业内部系统
- 运维平台
- 金融数据后台
- 长时间高频工作场景

特点：

- 更少透明效果
- 更高对比度
- 更高信息密度
- 更弱动效
- 实用性和稳定性优先

---

## 28. 推荐结论

建议选择：

> **B — 产品化平衡版**

核心原因：

1. 能保留参考图的品牌辨识度。
2. 适合真实企业产品长期使用。
3. 能够支持任务、项目、知识、AI 助手等复杂模块。
4. 玻璃和 3D 效果仍可作为差异化视觉资产。
5. 更容易构建设计系统和前端组件库。
6. 在性能、无障碍和响应式方面更可控。

---

## 29. 进入正式 UI 设计前需要确认

请确认以下决策：

### 29.1 设计方向

```text
[ ] A 高还原视觉版
[x] B 产品化平衡版（推荐）
[ ] C 企业稳健版
```

### 29.2 产品类型

```text
[ ] 通用任务管理平台
[ ] AI Agent 工作台
[ ] 项目管理平台
[ ] 企业知识管理平台
[ ] 数据分析平台
[ ] 其他：________________
```

### 29.3 首版设计范围

```text
[ ] 仅设计 Dashboard 首页
[ ] Dashboard + 任务详情
[ ] Dashboard + 任务列表 + 项目页
[ ] 完整核心产品框架
```

### 29.4 是否保留 3D 卡片

```text
[ ] 强保留，作为首页主视觉
[ ] 适度保留，作为可切换概览视图
[ ] 仅用于官网和空状态
[ ] 不使用 3D
```

### 29.5 交付目标

```text
[ ] UI 效果图
[ ] UI 设计规范
[ ] Figma 组件结构
[ ] 前端 Design Token
[ ] React / Vue 页面原型
[ ] 完整设计与开发交接方案
```

---

## 30. 确认后的下一阶段交付建议

确认方案后，建议按以下顺序推进：

```text
第一阶段：视觉方向板
→ 第二阶段：Design Token
→ 第三阶段：核心组件
→ 第四阶段：1440px Dashboard
→ 第五阶段：详情栏与交互状态
→ 第六阶段：响应式版本
→ 第七阶段：开发标注与组件映射
```

第一版正式 UI 建议包含：

1. 1440px Dashboard 完整页面
2. 左侧导航展开与收起状态
3. KPI 卡片组件
4. 任务列表与任务分组
5. 3D 项目概览
6. 项目时间轴
7. 右侧任务详情面板
8. AI 建议卡片
9. Hover、Selected、Focus、Loading 状态
10. 空状态与错误状态

---

## 31. 参考资料

以下资料用于支持本规范中的暗色模式、材质、Design Token、状态、动效和无障碍建议：

1. [W3C — Web Content Accessibility Guidelines (WCAG) 2.2](https://www.w3.org/TR/WCAG22/)
2. [W3C — Understanding Contrast Minimum](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html)
3. [W3C — Understanding Non-text Contrast](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html)
4. [W3C — Understanding Focus Appearance](https://www.w3.org/WAI/WCAG22/Understanding/focus-appearance.html)
5. [W3C — Understanding Target Size Minimum](https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum)
6. [W3C — Understanding Use of Color](https://www.w3.org/WAI/WCAG22/Understanding/use-of-color)
7. [W3C — prefers-reduced-motion Technique](https://www.w3.org/WAI/WCAG22/Techniques/css/C39)
8. [Apple Human Interface Guidelines — Materials](https://developer.apple.com/design/human-interface-guidelines/materials)
9. [Apple Human Interface Guidelines — Dark Mode](https://developer.apple.com/design/human-interface-guidelines/dark-mode)
10. [Apple Human Interface Guidelines — Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility)
11. [Material Design 3 — Interaction States](https://m3.material.io/foundations/interaction/states)
12. [Material Design 3 — Design Tokens](https://m3.material.io/foundations/design-tokens)
13. [Atlassian Design System — Design Tokens](https://atlassian.design/foundations/design-tokens)
14. [Atlassian Design System — Elevation](https://atlassian.design/foundations/elevation)
15. [Carbon Design System — Motion](https://carbondesignsystem.com/elements/motion/overview/)
16. [Carbon Design System — Spacing](https://v10.carbondesignsystem.com/guidelines/spacing/overview/)
17. [Ant Design — Dark Mode](https://ant.design/docs/spec/dark/)
18. [Ant Design — Colors](https://ant.design/docs/spec/colors/)

---

## 32. 文档状态说明

本文档为设计建议稿，不代表最终视觉方案。

在方向、产品类型、首版范围和 3D 视图定位确认前，暂不进入高保真 UI 设计阶段。
