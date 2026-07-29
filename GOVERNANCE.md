# 项目治理

## 1. 治理目标

- 决策过程透明
- 设计与工程同等重要
- 安全、无障碍和用户信任具有否决性权重
- 不由单一厂商或单一产品场景控制
- 重大改变具备讨论、记录和迁移过程

## 2. 角色

### User

使用规范、Token、设计资产或参考实现的人。

### Contributor

提交 Issue、文档、设计、代码、翻译、测试或评审的人。

### Reviewer

在特定领域具有持续贡献记录，并可评审对应目录：

- Design System Core
- Agent UX
- Enterprise
- Finance & Data
- Operations
- Accessibility
- Security
- Tokens & Tooling
- Documentation & Localization

### Maintainer

负责合并、发布、治理和社区维护。Maintainer 需要：

- 持续参与
- 遵守行为准则
- 处理利益冲突
- 尊重安全披露
- 记录重要决策
- 为 Breaking Change 提供迁移方式

### Steering Group

项目成熟后建立，用于处理跨领域战略、预算、品牌和治理争议。早期阶段由活跃 Maintainer 集体承担。

## 3. 决策方式

### 小型改动

通过 Pull Request Review 和维护者共识处理。

### 中型改动

需要关联 Issue，至少一位领域 Reviewer 批准。

### 重大改动

使用 Design Proposal / RFC：

1. Proposal 开放讨论
2. 收集用户、设计、工程、安全和无障碍影响
3. 维护者总结选项
4. 采用 Lazy Consensus
5. 有实质反对时记录异议并寻求明确决定
6. 合并后更新 ADR、Roadmap 或 Changelog

## 4. Lazy Consensus

在合理讨论期内没有实质反对，且所需 Reviewer 已批准，可以视为达成共识。

以下事项不能只依赖沉默：

- 许可证
- 商标
- 行为准则
- 安全披露政策
- 移除维护者
- 重大 Breaking Change
- 修改风险等级和审批默认值

## 5. Maintainer 产生

候选人通常需要：

- 至少一段持续贡献期
- 多个高质量贡献或评审
- 能解释项目原则和 Profile 架构
- 能处理不同意见
- 获得现有 Maintainer 明确批准

提名和决定应记录在公开 Issue；涉及个人安全或行为准则内容时可以保留隐私。

## 6. 失活与退出

Maintainer 可以主动转为 Emeritus。长期不活跃的 Maintainer 在联系和合理等待后，可以移出 CODEOWNERS 和发布权限，但保留历史贡献署名。

## 7. 利益冲突

参与者应披露可能影响决策的：

- 雇佣关系
- 商业产品利益
- 付费咨询
- 竞争项目控制权
- 供应商关系

存在直接利益冲突时，应回避最终审批。

## 8. 版本与发布

- 使用 Semantic Versioning
- `0.y.z` 为早期开发，公共接口不稳定
- `1.0.0` 定义第一套稳定公共接口
- 预发布版本使用 `alpha`、`beta` 和 `rc`
- Breaking Change 必须进入 Changelog 和迁移说明
- Release 需要至少两位 Maintainer 确认，项目只有一位 Maintainer 时应公开记录自审结果

## 9. 公开记录

以下内容应保持公开：

- Roadmap
- Changelog
- RFC / Design Proposal
- 重大投票或决定
- Maintainer 名单
- 组件成熟度
- Deprecated 和移除计划
