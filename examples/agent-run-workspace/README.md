# Agent Run Workspace

一个无依赖、可直接在浏览器打开的静态参考页，展示 NeoGlass X 首个支持预设：

```text
agent-workbench / dark / compact / solid
```

## 覆盖内容

- Goal、Run 状态和副作用边界
- Execution Timeline 与可折叠 Tool Call 证据
- R3 Approval Card、目标、影响范围、可撤销性和有效期
- Artifact Workspace
- Secret 遮蔽、最小权限和审计说明
- 键盘焦点、原生 `<details>` / `<dialog>`、High Contrast、Reduced Motion、Reduced Transparency 与移动端降级

## 运行

直接打开 [`index.html`](./index.html)，或使用任意静态文件服务器。页面中的“批准”与“拒绝”只会更新本地示例状态，不会访问网络、发送邮件或执行外部操作。

页面右上角可切换高对比、透明度和动效偏好；也可通过 URL 参数预览，例如 `?theme=high-contrast&transparency=none&motion=none`。

## 限制

这是参考实现，不是生产模板。生产环境必须将身份、策略、审批、权限、数据脱敏、审计、错误恢复和外部副作用接入实际服务端。
