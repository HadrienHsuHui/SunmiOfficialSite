# SUNBAY 官网部署指南

## 部署到 Vercel

### 方法 1: 通过 Vercel CLI（推荐）

1. **安装 Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **登录 Vercel**
   ```bash
   vercel login
   ```

3. **部署网站**
   在 `OfficialSite` 目录下运行：
   ```bash
   vercel
   ```
   
   首次部署时，Vercel 会询问：
   - Set up and deploy? → Yes
   - Which scope? → 选择你的账户
   - Link to existing project? → No
   - What's your project's name? → sunbay-official-site
   - In which directory is your code located? → ./
   
4. **生产环境部署**
   ```bash
   vercel --prod
   ```

### 方法 2: 通过 Vercel 网页界面

1. **访问 Vercel**
   - 前往 https://vercel.com
   - 使用 GitHub/GitLab/Bitbucket 账号登录

2. **导入项目**
   - 点击 "Add New..." → "Project"
   - 选择 "Import Git Repository" 或 "Import Third-Party Git Repository"
   - 如果没有 Git 仓库，可以先创建一个

3. **配置项目**
   - Project Name: `sunbay-official-site`
   - Framework Preset: `Other`
   - Root Directory: `OfficialSite`
   - Build Command: 留空（静态网站）
   - Output Directory: `./`

4. **部署**
   - 点击 "Deploy"
   - 等待部署完成

### 方法 3: 通过 Git 仓库（最佳实践）

1. **初始化 Git 仓库**
   ```bash
   cd OfficialSite
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **推送到 GitHub**
   ```bash
   git remote add origin https://github.com/your-username/sunbay-official-site.git
   git branch -M main
   git push -u origin main
   ```

3. **在 Vercel 中导入**
   - 登录 Vercel
   - 点击 "Add New..." → "Project"
   - 选择你的 GitHub 仓库
   - Vercel 会自动检测配置并部署

### 环境变量（如果需要）

如果需要配置环境变量：
1. 在 Vercel 项目设置中
2. 进入 "Settings" → "Environment Variables"
3. 添加所需的环境变量

### 自定义域名

1. 在 Vercel 项目中，进入 "Settings" → "Domains"
2. 添加你的自定义域名
3. 按照提示配置 DNS 记录

### 部署后检查

部署完成后，检查以下内容：
- ✅ 所有页面都能正常访问
- ✅ 图片正确加载
- ✅ CSS 样式正确应用
- ✅ JavaScript 功能正常
- ✅ Mega menu 交互正常
- ✅ 响应式设计在移动端正常

### 常见问题

**Q: 图片无法加载？**
A: 确保图片路径正确，使用相对路径（如 `images/hero/...`）

**Q: CSS 样式不生效？**
A: 检查 `vercel.json` 中的路由配置，确保静态资源正确映射

**Q: 404 错误？**
A: 确保所有 HTML 文件都在正确的位置，检查链接路径

### 性能优化建议

1. **图片优化**
   - 压缩图片文件
   - 使用 WebP 格式
   - 考虑使用 CDN

2. **缓存策略**
   - 已在 `vercel.json` 中配置
   - 静态资源缓存 1 年
   - HTML 文件不缓存

3. **监控**
   - 使用 Vercel Analytics
   - 监控页面加载速度
   - 检查错误日志

## 本地测试

在部署前，建议先本地测试：

```bash
# 使用 Python 简单服务器
cd OfficialSite
python -m http.server 8000

# 或使用 Node.js
npx http-server -p 8000
```

然后访问 http://localhost:8000

## 更新部署

每次更新代码后：
- 如果使用 Git + Vercel：推送到 GitHub，Vercel 会自动部署
- 如果使用 CLI：运行 `vercel --prod`

## 回滚

如果需要回滚到之前的版本：
1. 在 Vercel 项目中，进入 "Deployments"
2. 找到之前的部署版本
3. 点击 "..." → "Promote to Production"

---

**部署完成后的 URL 示例：**
- https://sunbay-official-site.vercel.app
- 或你的自定义域名

**需要帮助？**
- Vercel 文档: https://vercel.com/docs
- Vercel 支持: https://vercel.com/support
