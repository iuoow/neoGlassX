# AI Agent 工作台设计规范

> **版本**：v0.2  
> **状态**：Architecture Preview；规范优先，非稳定组件 API  
> **更新日期**：2026-07-29  
> **适用范围**：AI Agent 工作台、企业系统、金融与数据平台、运维与可观测平台、官网、概念产品与发布会  


## 1. 目标

Agent 工作台的核心不是“聊天”，而是让用户监督 Agent 如何理解目标、制定计划、调用工具、请求权限、产生副作用并交付产物。

## 2. 一等对象

```text
Agent
Profile / Identity
Session
Goal
Task
Run
Plan
Step
Tool Call
Tool Result
Approval
Skill
Memory
Artifact
Automation
Model / Provider
Node / Sandbox
Evaluation
Cost / Usage
Audit Event
```

OpenClaw 与 Hermes Agent 的现有能力说明，Skills、自动化、持久任务、Profile、独立 Worker 和会话状态不是附属设置，而是产品结构的重要组成部分。

## 3. 推荐信息架构

```text
Home
Agents
Runs
Tasks / Workboard
Sessions
Skills
Memory
Artifacts
Automations
Models
Nodes / Sandboxes
Evaluations
Observability
Security
Settings
```

轻量产品可以合并模块，但不能隐去 Run、权限和执行记录。

## 4. Agent Run 状态机

```text
Draft
Planning
Queued
Running
Calling Tool
Waiting for Input
Waiting for Approval
Delegating
Retrying
Blocked
Partially Completed
Completed
Failed
Cancelled
Rolled Back
```

每个状态必须规定：

- 是否可停止；
- 是否可重试；
- 是否可编辑目标；
- 是否已经产生外部副作用；
- 是否需要人工介入；
- 是否允许回滚；
- 是否影响预算与计费。

## 5. Run Workspace 布局

推荐四区结构，可根据屏幕折叠：

```text
目标与对话
执行时间线
计划 / 依赖图
产物与证据工作区
```

### Execution Timeline

每个节点显示：

- 时间；
- 执行者；
- 动作；
- 输入摘要；
- 输出摘要；
- 权限；
- 风险；
- 结果；
- 可展开的原始证据。

### Plan Graph

表达顺序、并行、依赖、委派、重试和阻塞。图形视图必须提供列表替代。

### Artifact Workspace

支持文档、代码、图片、表格、报告、Diff、构建结果和文件树。产物状态区分：

```text
Draft
Generated
Modified
Reviewed
Approved
Published
Superseded
```

## 6. Tool Call 组件

折叠态展示：

```text
工具名称 + 动作摘要 + 状态 + 时长 + 风险
```

展开态展示：

- 参数摘要与敏感值遮蔽；
- 目标环境；
- 返回结果；
- stdout / stderr；
- 文件或资源变更；
- 网络目标；
- 重试次数；
- 审批记录；
- 可复制的技术详情。

不得默认把所有原始日志展开，以免淹没主流程。

## 7. Skills 管理

Skill 页面至少包含：

- 来源与作者；
- 版本和更新时间；
- 适用 Agent；
- 工具依赖；
- 权限与 Secret；
- Gating / Allowlist；
- 安装、启用、暂停和移除；
- 最近使用；
- 失败率；
- 安全扫描或信任状态；
- 变更历史。

OpenClaw 的 Skill 机制涉及加载过滤、Allowlist、环境变量与 API Key 注入，因此 UI 必须让作用域和 Secret 边界可见。

## 8. Memory 设计

区分：

```text
Working Memory
Session Memory
Long-term Memory
User Profile Memory
Project Memory
Organizational Knowledge
```

写入长期记忆时显示：内容摘要、来源、适用范围、保留期限、敏感级别和删除入口。高敏感记忆默认需要审核。

## 9. 多 Agent 协作

多 Agent 看板需展示：

- 任务归属 Agent；
- 依赖；
- Worker 状态；
- Heartbeat；
- Workspace / Sandbox；
- 重试；
- 阻塞原因；
- Handoff；
- 并发限制；
- 最终产物。

Hermes Kanban 的持久化任务、Agent 工具入口和独立 OS 进程 Worker 提醒设计者：不要把“多 Agent”仅做成头像叠加或聊天角色切换。

## 10. Automation

统一展示：

- 触发类型：定时、事件、条件、持续指令；
- 下次运行；
- 时区；
- Agent 与权限；
- 最近结果；
- 连续失败；
- 通知渠道；
- 暂停和手动运行；
- 预算和频率限制。

## 11. Explainability

AI 标签应作为解释入口，解释层级为：

```text
摘要
→ 关键来源与工具
→ 计划和决策依据
→ 原始证据与技术详情
```

不要求展示模型内部思维链；应展示可审计的外部证据、计划、工具与结果。

## 12. Agent 页面验收

- 用户能区分“建议”和“已经执行”；
- 任何外部副作用都能追溯到 Run 和审批；
- Tool Call 有摘要和证据；
- Run 可停止、重试或恢复；
- 失败说明下一步；
- 多 Agent Handoff 清晰；
- 产物可预览、比较、批准和导出；
- Secret 不出现在普通日志和截图中。
