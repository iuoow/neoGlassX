# Figma 与前端工程规范

> **版本**：v0.2  
> **状态**：Architecture Preview；规范优先，非稳定组件 API  
> **更新日期**：2026-07-29  
> **适用范围**：AI Agent 工作台、企业系统、金融与数据平台、运维与可观测平台、官网、概念产品与发布会  


## 1. Figma 文件结构

```text
00_Cover_And_Status
01_Principles
02_Variables_And_Tokens
03_Core_Components
04_Core_Patterns
05_Agent_Profile
06_Enterprise_Profile
07_Finance_Data_Profile
08_Operations_Profile
09_Marketing_Profile
10_Accessibility
11_Prototype
12_Dev_Handoff
13_Deprecated
```

## 2. Variables

建立 Collection：

```text
Color
Typography
Spacing
Radius
Elevation
Motion
Density
Risk
Product Profile
```

Mode 对应 Theme、Density、Motion、Transparency 和允许的 Experience。Product Profile 使用可追踪的预设映射；Risk 不属于 Figma 全局 Mode，而是 Action、Tool Call 和 Approval 的组件属性。避免为每个页面复制颜色 Style。

## 3. 组件命名

```text
Category / Component / Variant / State / Size
```

示例：

```text
Action / Button / Primary / Default / Medium
Data / Row / Selected / Default / Compact
Agent / ToolCall / ApprovalRequired / Expanded / Standard
Ops / Alert / Critical / Acknowledged / Compact
```

## 4. Figma 与代码映射

每个组件记录：

- Figma Component Key；
- 代码包和组件名；
- Props；
- Variant 映射；
- Token 依赖；
- 可访问性要求；
- 版本；
- 成熟度。

## 5. Token 输出

建议输出平台中立 JSON，再生成 CSS、TypeScript、iOS 或 Android 格式。

```json
{
  "color": {
    "surface": {
      "default": {
        "$type": "color",
        "$value": {
          "colorSpace": "srgb",
          "components": [0.0509, 0.0667, 0.0588],
          "hex": "#0D110F"
        }
      }
    }
  }
}
```

## 6. 前端属性

```html
<body
  data-theme="dark"
  data-density="compact"
  data-product="agent"
  data-experience="solid"
>
```

组件通过语义 Token 响应，不在业务页面硬编码颜色和尺寸。高风险行为使用组件属性，例如 `risk="r3"`，并由 Approval / Audit 契约处理，而不是使用全局风险主题。

## 7. 测试

- Unit Test：状态逻辑；
- Interaction Test：键盘与焦点；
- Accessibility Test：自动 + 人工；
- Visual Regression：主题、密度和 Profile；
- Performance Test：大数据、长列表、流式输出；
- Contract Test：Figma Variant 与 Props 对齐。

## 8. Storybook / 文档站

每个组件展示：

```text
Overview
Playground
States
Themes
Density
Accessibility
Content
Do / Don't
API
Changelog
```

Agent 与高风险组件增加审计、权限和失败示例。

## 9. 分支与发布

- 设计变更使用分支；
- Stable 组件不可直接覆盖；
- 破坏性变更提供迁移说明；
- 设计与代码使用相同版本；
- Deprecated 组件保留替代方案和移除日期。

## 10. 交接清单

- 响应式和容器行为；
- 全部状态；
- 文案和数据格式；
- 键盘顺序；
- Loading / Empty / Error / Permission；
- 风险等级；
- 性能和虚拟化要求；
- 埋点事件；
- 真实示例数据；
- 禁止事项。
