# 参与贡献

感谢你参与 NeoGlass Experience System。

## 1. 可以贡献什么

- 设计原则、信息架构和产品模式
- Agent Run、Tool Call、Approval、Memory、Skill 和 Artifact 体验
- 企业表格、表单、审批、权限和审计模式
- 金融、数据可信度和可视化规范
- 运维、告警、事件和可观测性模式
- Design Token、Schema、转换与校验
- Figma 组件、线框图和页面模板
- 无障碍、国际化和性能建议
- 中英文文档、术语和案例
- 参考实现、测试和自动化工具

## 2. 贡献前先选择入口

| 内容 | 推荐入口 |
|---|---|
| 小型错别字、失效链接、明确修正 | 直接 Pull Request |
| 新组件或新交互模式 | Design Proposal Issue |
| Token 命名或架构调整 | Design Proposal Issue |
| 治理或许可证调整 | Discussion 后提交 Proposal |
| 安全漏洞 | 按 `SECURITY.md` 私下报告 |
| 使用问题 | GitHub Discussions |
| 可复现错误 | Bug Report Issue |

## 3. 重大变更流程

以下改动需要先提交 Design Proposal：

- 新增或删除 Product Profile
- 修改核心 Token 层级
- 引入不兼容命名
- 调整 Agent 风险等级
- 改变审批、权限或审计语义
- 新增正式实现技术栈
- 修改许可证或治理结构

Proposal 至少说明：

1. 问题是什么
2. 哪些用户和场景受影响
3. 现有方案为什么不足
4. 建议方案
5. 备选方案
6. 无障碍、安全、性能和迁移影响
7. 是否构成 Breaking Change

## 4. 本地工作

当前仓库以 Markdown 为主：

```bash
git clone https://github.com/iuoow/neoGlassX.git
cd neoGlassX
git checkout -b docs/agent-approval-guidance
```

提交前至少检查：

- Markdown 可以正常渲染
- 相对链接有效
- 文件名和目录保持一致
- 没有真实密钥、客户数据或内部地址
- 新增外部资料附带来源
- 新增视觉资产附带权利说明
- 中英文术语没有混乱

仓库提供基础校验：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/Test-Repository.ps1
```

准备公开 Release 时，再运行 `-Release` 模式；它会阻止未替换的 Owner、维护者、邮箱和版权占位符。

## 5. Commit 建议

建议使用以下前缀：

```text
docs:
feat:
fix:
tokens:
figma:
a11y:
security:
governance:
chore:
```

示例：

```text
docs: clarify agent run states
tokens: add semantic surface naming proposal
a11y: document keyboard behavior for plan graph
```

## 6. DCO

本项目采用 Developer Certificate of Origin 1.1。

每个提交都应包含 Signed-off-by：

```bash
git commit -s -m "docs: improve approval guidance"
```

这表示你确认有权在项目许可证下提交该贡献。DCO 正文见 [`DCO`](./DCO)。

## 7. AI 辅助贡献政策

允许使用 AI 工具辅助研究、写作、翻译、代码和设计，但贡献者仍对最终内容负责。

必须做到：

- 对重要的 AI 辅助贡献进行简要披露
- 核验事实、链接、引用、代码和许可证
- 不提交机密、客户、个人或受限制内容
- 不使用来源不清的生成图片、图标或字体
- 不把模型输出当作安全、法律或合规结论
- 人工检查 Agent 相关示例是否会鼓励危险默认行为

建议在 Pull Request 中写明：

```text
AI assistance:
- Tool/model:
- Used for:
- Human verification performed:
```

## 8. 文档规则

- 使用清晰、可执行的语言。
- 明确区分 MUST、SHOULD 和 MAY。
- 不把概念建议写成已实现能力。
- 不宣称未经验证的安全、合规或无障碍结果。
- 外部事实尽量引用一手官方资料。
- 避免大段复制外部资料。
- 新增术语时更新术语表或相关入口。

## 9. 设计资产规则

提交 Figma、图片、视频、3D 或插画时，请说明：

- 作者
- 许可证
- 是否包含第三方资产
- 是否包含商标
- 是否由 AI 生成或辅助
- 源文件位置
- 可编辑格式
- 字体和图标依赖
- 导出尺寸和用途

未经明确授权，不提交客户界面截图、付费模板、商业字体或第三方产品 Logo。

## 10. Pull Request 检查

- [ ] Issue 或 Proposal 已关联
- [ ] 改动范围清晰
- [ ] 文档和示例同步更新
- [ ] 外部引用已核验
- [ ] 无障碍影响已考虑
- [ ] 安全和隐私影响已考虑
- [ ] Breaking Change 已说明
- [ ] AI 辅助情况已披露
- [ ] 提交已 DCO Sign-off
- [ ] 没有敏感信息和未授权素材

## 11. Review 原则

Reviewer 将重点检查：

- 是否符合共享核心 + Profile 架构
- 是否保持语义一致
- 是否给出使用与不使用场景
- 是否存在不安全默认值
- 是否兼顾键盘、屏幕阅读器和高对比模式
- 是否具有迁移和降级策略
- 是否把营销表达误用于生产系统

项目维护者可以要求拆分范围过大的 PR。
