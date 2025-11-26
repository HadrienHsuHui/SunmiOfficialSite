# GitHub 仓库设置指南

## 📦 将项目推送到 GitHub

### 步骤 1: 初始化 Git 仓库

在 `OfficialSite` 目录下运行：

```bash
cd OfficialSite
git init
git add .
git commit -m "Initial commit: SUNBAY Official Website"
```

### 步骤 2: 在 GitHub 创建新仓库

1. 访问 https://github.com/new
2. 填写仓库信息：
   - **Repository name**: `sunbay-official-site` (或你喜欢的名字)
   - **Description**: `SUNBAY Payment Infrastructure Official Website`
   - **Visibility**: Public 或 Private
   - **不要**勾选 "Initialize this repository with a README"
3. 点击 "Create repository"

### 步骤 3: 连接远程仓库并推送

GitHub 会显示命令，或者使用以下命令：

```bash
# 添加远程仓库（替换 YOUR-USERNAME 为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR-USERNAME/sunbay-official-site.git

# 重命名分支为 main（如果需要）
git branch -M main

# 推送到 GitHub
git push -u origin main
```

### 步骤 4: 验证推送

访问你的 GitHub 仓库页面，确认所有文件都已上传。

## 🔗 连接 Vercel 和 GitHub

### 自动部署设置

1. **登录 Vercel**
   - 访问 https://vercel.com
   - 使用 GitHub 账号登录

2. **导入项目**
   - 点击 "Add New..." → "Project"
   - 选择你的 GitHub 仓库 `sunbay-official-site`
   - Vercel 会自动检测到 `vercel.json` 配置

3. **配置项目**
   - Project Name: `sunbay-official-site`
   - Framework Preset: `Other`
   - Root Directory: `./` (保持默认)
   - Build Command: 留空
   - Output Directory: `./`

4. **部署**
   - 点击 "Deploy"
   - 等待部署完成

### 自动部署流程

连接后，每次推送到 GitHub 都会自动触发部署：

```bash
# 修改代码后
git add .
git commit -m "Update: 描述你的更改"
git push

# Vercel 会自动检测并部署
```

## 🌿 分支策略（推荐）

### 创建开发分支

```bash
# 创建并切换到开发分支
git checkout -b develop

# 推送开发分支
git push -u origin develop
```

### 工作流程

1. **开发新功能**
   ```bash
   git checkout develop
   git checkout -b feature/new-feature
   # 进行开发...
   git add .
   git commit -m "Add: 新功能描述"
   git push -u origin feature/new-feature
   ```

2. **合并到开发分支**
   ```bash
   git checkout develop
   git merge feature/new-feature
   git push
   ```

3. **发布到生产环境**
   ```bash
   git checkout main
   git merge develop
   git push
   # Vercel 会自动部署到生产环境
   ```

## 🔧 Vercel 分支部署

Vercel 会为不同分支创建不同的部署：

- `main` 分支 → 生产环境 (https://sunbay-official-site.vercel.app)
- `develop` 分支 → 预览环境 (https://sunbay-official-site-git-develop.vercel.app)
- 其他分支 → 临时预览环境

## 📝 提交信息规范（推荐）

使用清晰的提交信息：

```bash
# 新增功能
git commit -m "Add: 添加新的产品页面"

# 修复问题
git commit -m "Fix: 修复导航菜单在移动端的显示问题"

# 更新内容
git commit -m "Update: 更新首页 hero 图片"

# 优化性能
git commit -m "Optimize: 压缩图片文件大小"

# 文档更新
git commit -m "Docs: 更新部署文档"

# 样式调整
git commit -m "Style: 调整按钮颜色和间距"
```

## 🔐 保护主分支（推荐）

在 GitHub 仓库设置中：

1. 进入 Settings → Branches
2. 添加分支保护规则
3. 选择 `main` 分支
4. 启用：
   - ✅ Require pull request reviews before merging
   - ✅ Require status checks to pass before merging

## 👥 协作开发

### 添加协作者

1. 进入仓库 Settings → Collaborators
2. 点击 "Add people"
3. 输入 GitHub 用户名或邮箱

### Pull Request 流程

1. **Fork 仓库**（外部贡献者）
2. **创建功能分支**
   ```bash
   git checkout -b feature/my-feature
   ```
3. **提交更改**
   ```bash
   git add .
   git commit -m "Add: 我的新功能"
   git push origin feature/my-feature
   ```
4. **创建 Pull Request**
   - 在 GitHub 上点击 "Compare & pull request"
   - 填写 PR 描述
   - 请求审查

## 📊 GitHub Actions（可选）

创建 `.github/workflows/deploy.yml` 来自动化部署：

```yaml
name: Deploy to Vercel

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Deploy to Vercel
        uses: amondnet/vercel-action@v20
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.ORG_ID }}
          vercel-project-id: ${{ secrets.PROJECT_ID }}
```

## 🏷️ 版本标签

创建版本标签：

```bash
# 创建标签
git tag -a v1.0.0 -m "Version 1.0.0: Initial release"

# 推送标签
git push origin v1.0.0

# 推送所有标签
git push origin --tags
```

## 📦 Release 发布

在 GitHub 上创建 Release：

1. 进入仓库页面
2. 点击 "Releases" → "Create a new release"
3. 选择标签或创建新标签
4. 填写发布说明
5. 点击 "Publish release"

## 🔄 常用 Git 命令

```bash
# 查看状态
git status

# 查看提交历史
git log --oneline

# 撤销未提交的更改
git checkout -- filename

# 撤销最后一次提交（保留更改）
git reset --soft HEAD~1

# 拉取最新代码
git pull origin main

# 查看远程仓库
git remote -v

# 查看所有分支
git branch -a
```

## 🆘 常见问题

### Q: 推送时要求输入用户名和密码？

A: GitHub 已不支持密码认证，需要使用 Personal Access Token：

1. 访问 GitHub Settings → Developer settings → Personal access tokens
2. 生成新 token
3. 使用 token 作为密码

或者配置 SSH：

```bash
# 生成 SSH 密钥
ssh-keygen -t ed25519 -C "your_email@example.com"

# 添加到 GitHub
# 复制 ~/.ssh/id_ed25519.pub 内容到 GitHub Settings → SSH keys
```

### Q: 如何删除远程分支？

```bash
git push origin --delete branch-name
```

### Q: 如何重命名分支？

```bash
# 本地重命名
git branch -m old-name new-name

# 删除远程旧分支并推送新分支
git push origin :old-name new-name
git push origin -u new-name
```

## 📞 需要帮助？

- Git 文档: https://git-scm.com/doc
- GitHub 文档: https://docs.github.com
- Vercel + GitHub: https://vercel.com/docs/git

---

**准备好了？开始推送到 GitHub 吧！** 🚀
