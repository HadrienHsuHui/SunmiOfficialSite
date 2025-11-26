# 部署前检查清单

在部署到 Vercel 之前，请确保完成以下检查：

## ✅ 文件检查

- [ ] 所有 HTML 文件都存在且无语法错误
- [ ] CSS 文件正确链接
- [ ] JavaScript 文件正确链接
- [ ] 所有图片文件都已上传到 `images/` 目录
- [ ] `vercel.json` 配置文件存在
- [ ] `package.json` 文件存在

## ✅ 内容检查

- [ ] 所有页面标题正确
- [ ] 所有链接都指向正确的页面
- [ ] 联系信息正确（邮箱、电话等）
- [ ] 公司信息准确
- [ ] 产品描述完整

## ✅ 图片检查

- [ ] `images/hero/` 目录中的所有图片都存在：
  - [ ] hero-main.png
  - [ ] grocery-checkout.jpg
  - [ ] developer-coding.png
  - [ ] terminals-display.png
  - [ ] popup-store.webp
  - [ ] restaurant-service.jpg
- [ ] `images/devices/` 目录中的设备图片存在
- [ ] `images/screenshots/` 目录中的截图存在
- [ ] 所有图片都已优化（压缩）

## ✅ 功能检查

- [ ] 导航栏 Mega Menu 正常工作
- [ ] 所有按钮链接正确
- [ ] 表单功能正常（如果有）
- [ ] 移动端菜单正常工作
- [ ] 页面滚动动画正常
- [ ] 图片悬停效果正常

## ✅ 响应式检查

- [ ] 桌面端显示正常（>1024px）
- [ ] 平板端显示正常（768-1024px）
- [ ] 移动端显示正常（<768px）
- [ ] 所有文字在不同屏幕尺寸下可读
- [ ] 图片在不同屏幕尺寸下正确缩放

## ✅ 性能检查

- [ ] 图片文件大小合理（<500KB）
- [ ] CSS 文件已压缩（可选）
- [ ] JavaScript 文件已压缩（可选）
- [ ] 没有未使用的大文件

## ✅ SEO 检查

- [ ] 所有页面都有 `<title>` 标签
- [ ] 所有页面都有 `<meta description>` 标签（建议）
- [ ] 图片都有 `alt` 属性
- [ ] 使用语义化 HTML 标签

## ✅ 浏览器兼容性

- [ ] Chrome 测试通过
- [ ] Firefox 测试通过
- [ ] Safari 测试通过（如果可能）
- [ ] Edge 测试通过
- [ ] 移动浏览器测试通过

## ✅ 安全检查

- [ ] 没有硬编码的敏感信息
- [ ] 外部链接使用 `rel="noopener noreferrer"`（如果需要）
- [ ] 表单有适当的验证（如果有）

## ✅ Vercel 配置

- [ ] `vercel.json` 配置正确
- [ ] 路由规则正确
- [ ] 缓存策略合理
- [ ] 环境变量已设置（如果需要）

## 🚀 部署步骤

完成所有检查后：

1. **本地测试**
   ```bash
   python -m http.server 8000
   # 或
   npx http-server -p 8000
   ```
   访问 http://localhost:8000 进行最后测试

2. **部署到 Vercel**
   
   **选项 A: 使用脚本**
   ```bash
   # Windows
   deploy.bat
   
   # Mac/Linux
   ./deploy.sh
   ```
   
   **选项 B: 使用 CLI**
   ```bash
   vercel --prod
   ```

3. **部署后验证**
   - [ ] 访问部署的 URL
   - [ ] 测试所有主要页面
   - [ ] 测试导航功能
   - [ ] 检查图片加载
   - [ ] 测试移动端

## 📝 部署后任务

- [ ] 配置自定义域名（如果有）
- [ ] 设置 SSL 证书（Vercel 自动提供）
- [ ] 配置 DNS 记录
- [ ] 设置 Analytics（可选）
- [ ] 添加到 Google Search Console（可选）
- [ ] 提交 sitemap（可选）

## 🔄 更新流程

每次更新后：
1. 在本地测试更改
2. 提交到 Git（如果使用）
3. 运行 `vercel --prod` 或推送到 GitHub
4. 验证部署结果

## 📞 需要帮助？

- Vercel 文档: https://vercel.com/docs
- Vercel 支持: https://vercel.com/support
- 查看 DEPLOYMENT.md 获取详细指南

---

**准备好了？开始部署吧！** 🚀
