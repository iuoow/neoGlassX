# 安全政策

## 受支持版本

在 `1.0.0` 前，项目仅承诺对最新预发布版本评估安全问题。

| Version | Supported |
|---|---|
| Latest `0.x` pre-release | Best effort |
| Older pre-releases | No |
| Unreleased branches | No guarantee |

文档错误、危险交互建议、Token 工具链漏洞和参考实现漏洞均可按本政策报告。

## 报告漏洞

请不要在公开 Issue、Discussion 或 Pull Request 中披露：

- 未修复漏洞
- 可直接利用的 Agent 攻击链
- Secret、Token、API Key 或凭证
- 客户、个人或内部数据
- 未公开的供应链问题
- 绕过人工审批或权限边界的具体方法

首选且唯一的报告渠道：

1. [GitHub Private Vulnerability Reporting](https://github.com/iuoow/neoGlassX/security/advisories/new)

请先在仓库设置中启用该功能并测试提交流程；在未配置另一条经过验证的私密渠道前，不接受通过公开 Issue、Discussion 或 Pull Request 提交安全报告。

## 报告内容

请尽量包含：

- 受影响文件、版本或组件
- 风险类别
- 可复现步骤
- 预期行为和实际行为
- 影响范围
- 是否涉及真实数据或外部副作用
- 建议修复方案
- 是否已在其他位置披露

请不要发送真实 Secret；使用无效示例代替。

## 处理目标

维护团队将尽力：

- 在 5 个工作日内确认收到报告
- 评估严重程度和影响范围
- 与报告者协商披露时间
- 在修复后发布安全公告
- 对设计规范类风险同步更新文档和示例

这些时间是目标，不构成 SLA。

## Agent 与设计系统特有风险

本项目特别关注：

- Prompt Injection 导致的危险 UI 默认行为
- Tool 权限、范围和参数展示不足
- 人工审批信息不完整
- 重试造成重复外部副作用
- Memory 或 Skill 污染
- Secret 暴露
- 日志、Trace 和 Artifact 泄漏敏感数据
- 不可信 Skill 或依赖供应链
- 生产环境、财务和权限操作缺乏二次确认
- 无障碍问题导致用户无法感知风险状态

## 安全公告

修复完成后，建议通过 GitHub Security Advisory 发布：

- 受影响版本
- 风险和影响
- 缓解方式
- 修复版本
- 升级或迁移步骤
- 报告者致谢，需获得同意
