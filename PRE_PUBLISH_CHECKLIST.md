# 发布前检查清单

## 已配置的仓库身份

```text
GitHub owner: iuoow
Repository: neoGlassX
Repository URL: https://github.com/iuoow/neoGlassX
Primary maintainer: @iuoow
```

建议先执行仓库的发布校验：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/Update-Manifest.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/Test-Repository.ps1 -Release
```

校验失败前不得创建公开 Release。`Update-Manifest.ps1` 应在最终文件变更后运行；`-Release` 模式会验证其 SHA-256 清单。

## 必须确认

- [ ] 项目名称和商标检索
- [ ] 许可证权利人
- [ ] 文档与代码的双许可证边界
- [ ] GitHub Private Vulnerability Reporting 已启用且已测试
- [ ] 行为准则举报渠道（私密、可用、由可信维护者访问）
- [ ] Maintainers 和 CODEOWNERS
- [ ] CITATION 作者与仓库地址
- [ ] GitHub Discussions 和 Private Vulnerability Reporting
- [ ] 第三方素材来源
- [ ] README 中的项目状态准确
- [ ] 没有暗示 OpenClaw、Hermes Agent 或其他项目背书
- [ ] Release ZIP 可以正常解压
