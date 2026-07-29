# Design Tokens

## 状态

```text
Experimental
```

本目录用于逐步建立 NeoGlass X 的机器可读 Token。当前示例对齐 DTCG 2025.10 的基本 `$type` / `$value` 结构，但尚未构成稳定公共 API。

## 目标层级

```text
Primitive
→ Semantic
→ Component
→ Product Profile Mapping
```

## 计划维度

```text
Theme        = light | dark | high-contrast
Density      = compact | standard | comfortable | presentation
Experience   = solid | glass | immersive
Product      = agent | enterprise | finance | ops | marketing
Motion       = none | reduced | productive | expressive
Transparency = none | reduced | full
Risk         = r0 | r1 | r2 | r3 | r4
```

## 稳定规范

Token 交换格式计划基于：

```text
Design Tokens Community Group Format Module 2025.10
```

项目级 Schema 计划使用：

```text
JSON Schema Draft 2020-12
```

## 目录规划

```text
tokens/
├── primitive/
├── semantic/
├── component/
├── profiles/
├── themes/
├── schema/
└── build/
```

当前目录包含一个最小但可追踪的分层示例：

```text
primitive/color.json
semantic/color.json
component/button.json
profiles/agent-workbench.json
themes/dark.json
schema/neoglass.tokens.schema.json
```

## 贡献注意

- 不要把产品品牌色直接写入所有状态语义。
- `success` 不等于 `brand`。
- 前景色和背景色需要成对验证。
- 风险等级必须同时使用文字、图标或结构提示。
- 修改 Token 名称需要说明迁移影响。
- `1.0.0` 前所有 Token 均可能变化。

`neoglass.example.tokens.json` 保留为单文件兼容示例；新的贡献应使用分层目录。主题差异通过 alias / mapping 表达，不要在稳定语义名中加入 `-dark` 或 `-light`。Risk 不是全局主题 Token；它必须作为具体操作、工具调用或审批的语义处理。

初始 CSS Variables 输出位于 [`build/neoglass.css`](./build/neoglass.css)，供 [Agent Run Workspace](../examples/agent-run-workspace/) 参考页使用。该输出由 [`scripts/Build-Tokens.ps1`](../scripts/Build-Tokens.ps1) 生成，并包含 Dark 和 High Contrast 映射；正式发布前仍需扩展为完整的跨平台转换流程。
