# 🚀 快速开始指南

## 方法 1: 使用自动化脚本（推荐）

### Windows 用户

1. 打开命令提示符（CMD）或 PowerShell
2. 进入项目目录：
   ```bash
   cd OfficialSite
   ```
3. 运行设置脚本：
   ```bash
   setup-github.bat
   ```
4. 按照提示操作

### Mac/Linux 用户

1. 打开终端
2. 进入项目目录：
   ```bash
   cd OfficialSite
   ```
3. 给脚本添加执行权限：
   ```bash
   chmod +x setup-github.sh
   ```
4. 运行设置脚本：
   ```bash
   ./setup-github.sh
   ```
5. 按照提示操作

## 方法 2: 手动设置

### 步骤 1: 初始化 Git

```bash
cd OfficialSite
git init
git add .
git commit -m "Initial commit: SUNBAY Official Website"
git branch -M main
```

### 步骤 2: 在 GitHub 创建仓库

1. 访问 https://github.com/new
2. 仓库名称：`sunbay-official-site`
3. 不要勾选任何初始化选项
4. 点击 "Create repository"

### 步骤 3: 推送到 GitHub

```bash
# 替换 YOUR-USERNAME 为你的 GitHub 用户名
git remote add origin https://github.com/YOUR-USERNAME/sunbay-official-site.git
git push -u origin main
```

### 步骤 4: 部署到 Vercel

1. 访问 https://vercel.com
2. 使用 GitHub 账号登录
3. 点击 "Add New..." → "Project"
4. 选择 `sunbay-official-site` 仓库
5. 点击 "Deploy"

## 🎉 完成！

部署完成后，你会得到一个 Vercel URL，例如：
- https://sunbay-official-site.vercel.app

## 📝 后续更新

每次修改代码后：

```bash
git add .
git commit -m "描述你的更改"
git push
```

Vercel 会自动检测并重新部署。

## 📚 更多信息

- 详细 GitHub 设置：查看 `GITHUB-SETUP.md`
- 部署指南：查看 `DEPLOYMENT.md`
- 部署前检查：查看 `PRE-DEPLOYMENT-CHECKLIST.md`

## 🆘 遇到问题？

### Git 推送失败

如果推送时要求输入密码，GitHub 已不再支持密码认证。你需要：

1. 生成 Personal Access Token：
   - 访问 https://github.com/settings/tokens
   - 点击 "Generate new token (classic)"
   - 选择权限：`repo`
   - 生成并复制 token

2. 使用 token 作为密码推送

或者配置 SSH 密钥（推荐）：

```bash
# 生成 SSH 密钥
ssh-keygen -t ed25519 -C "your_email@example.com"

# 添加到 GitHub
# 复制 ~/.ssh/id_ed25519.pub 内容
# 粘贴到 GitHub Settings → SSH and GPG keys
```

### Vercel 部署失败

1. 检查 `vercel.json` 配置是否正确
2. 确保所有文件路径正确
3. 查看 Vercel 部署日志

## 📞 需要帮助？

- Git 文档: https://git-scm.com/doc
- GitHub 文档: https://docs.github.com
- Vercel 文档: https://vercel.com/docs

---

**准备好了？开始吧！** 🚀
