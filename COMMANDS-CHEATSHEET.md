# 🎯 命令速查表

## 快速部署命令

### Windows
```bash
cd OfficialSite
setup-github.bat
```

### Mac/Linux
```bash
cd OfficialSite
chmod +x setup-github.sh
./setup-github.sh
```

## Git 常用命令

### 初始化和提交
```bash
git init                              # 初始化仓库
git add .                             # 添加所有文件
git commit -m "提交信息"              # 提交更改
git branch -M main                    # 重命名分支为 main
```

### 远程仓库操作
```bash
git remote add origin URL             # 添加远程仓库
git remote -v                         # 查看远程仓库
git push -u origin main               # 首次推送
git push                              # 后续推送
git pull                              # 拉取更新
```

### 分支操作
```bash
git branch                            # 查看分支
git branch develop                    # 创建分支
git checkout develop                  # 切换分支
git checkout -b feature/new           # 创建并切换分支
git merge develop                     # 合并分支
git branch -d feature/new             # 删除分支
```

### 查看状态
```bash
git status                            # 查看状态
git log                               # 查看提交历史
git log --oneline                     # 简洁历史
git diff                              # 查看更改
```

### 撤销操作
```bash
git checkout -- file.txt              # 撤销文件更改
git reset HEAD file.txt               # 取消暂存
git reset --soft HEAD~1               # 撤销最后一次提交（保留更改）
git reset --hard HEAD~1               # 撤销最后一次提交（删除更改）
```

## Vercel CLI 命令

### 安装和登录
```bash
npm install -g vercel                 # 安装 Vercel CLI
vercel login                          # 登录
vercel whoami                         # 查看当前用户
```

### 部署
```bash
vercel                                # 预览部署
vercel --prod                         # 生产部署
vercel --yes                          # 跳过确认
```

### 项目管理
```bash
vercel ls                             # 列出部署
vercel inspect URL                    # 查看部署详情
vercel remove PROJECT                 # 删除项目
vercel domains                        # 管理域名
```

### 环境变量
```bash
vercel env ls                         # 列出环境变量
vercel env add                        # 添加环境变量
vercel env rm                         # 删除环境变量
```

## 本地开发服务器

### Python
```bash
python -m http.server 8000            # Python 3
python -m SimpleHTTPServer 8000       # Python 2
```

### Node.js
```bash
npx http-server -p 8000               # 使用 http-server
npx serve -p 8000                     # 使用 serve
```

### PHP
```bash
php -S localhost:8000                 # PHP 内置服务器
```

## 常用 Git 工作流

### 日常开发
```bash
git pull                              # 1. 拉取最新代码
# 进行开发...
git add .                             # 2. 添加更改
git commit -m "描述"                  # 3. 提交更改
git push                              # 4. 推送到远程
```

### 功能开发
```bash
git checkout -b feature/new-feature   # 1. 创建功能分支
# 进行开发...
git add .                             # 2. 添加更改
git commit -m "Add: 新功能"           # 3. 提交更改
git push -u origin feature/new-feature # 4. 推送分支
# 在 GitHub 上创建 Pull Request
```

### 修复 Bug
```bash
git checkout -b fix/bug-name          # 1. 创建修复分支
# 修复 bug...
git add .                             # 2. 添加更改
git commit -m "Fix: 修复问题"         # 3. 提交更改
git push -u origin fix/bug-name       # 4. 推送分支
```

## GitHub CLI 命令（可选）

### 安装
```bash
# Windows (使用 winget)
winget install --id GitHub.cli

# Mac (使用 Homebrew)
brew install gh

# Linux
# 查看 https://github.com/cli/cli#installation
```

### 常用命令
```bash
gh auth login                         # 登录
gh repo create                        # 创建仓库
gh repo view                          # 查看仓库
gh pr create                          # 创建 PR
gh pr list                            # 列出 PR
gh issue create                       # 创建 Issue
```

## 快捷命令别名（可选）

在 `.bashrc` 或 `.zshrc` 中添加：

```bash
# Git 别名
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias glog='git log --oneline --graph'

# Vercel 别名
alias vd='vercel'
alias vdp='vercel --prod'

# 本地服务器
alias serve='python -m http.server 8000'
```

## 紧急情况命令

### 强制推送（谨慎使用）
```bash
git push --force                      # 强制推送
git push --force-with-lease           # 更安全的强制推送
```

### 清理和重置
```bash
git clean -fd                         # 删除未跟踪的文件
git reset --hard origin/main          # 重置到远程状态
```

### 修改最后一次提交
```bash
git commit --amend -m "新消息"        # 修改提交信息
git commit --amend --no-edit          # 添加文件到最后一次提交
```

## 检查命令

### 检查 Git 安装
```bash
git --version                         # 查看 Git 版本
```

### 检查 Node.js 和 npm
```bash
node --version                        # 查看 Node.js 版本
npm --version                         # 查看 npm 版本
```

### 检查 Vercel CLI
```bash
vercel --version                      # 查看 Vercel CLI 版本
```

## 帮助命令

```bash
git help                              # Git 帮助
git help <command>                    # 特定命令帮助
vercel help                           # Vercel 帮助
vercel <command> --help               # 特定命令帮助
```

---

**提示**: 将此文件保存为书签，随时查阅！📚
