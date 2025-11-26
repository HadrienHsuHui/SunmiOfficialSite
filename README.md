# SUNBAY Official Website

SUNBAY 支付基础设施官方网站 - 为 ISO 和 ISV 提供即插即用的支付解决方案。

## 🌟 特性

- ✅ 现代化响应式设计
- ✅ 品牌渐变色系统（橙色→紫色）
- ✅ 交互式 Mega Menu 导航
- ✅ 全屏 Hero Section
- ✅ 动画和视觉效果
- ✅ 移动端优化

## 📁 项目结构

```
OfficialSite/
├── css/
│   └── style.css          # 主样式文件
├── js/
│   └── main.js            # JavaScript 交互
├── images/
│   ├── hero/              # Hero 区域图片
│   ├── devices/           # 设备图片
│   └── screenshots/       # 截图
├── index.html             # 首页
├── tapro.html             # Tapro 产品页
├── copilot.html           # Copilot 产品页
├── hardware.html          # 硬件页面
├── retail.html            # 零售解决方案
├── restaurant.html        # 餐饮解决方案
├── wholesale-iso.html     # 批发 ISO 方案
├── startup-iso.html       # ISV 方案
├── white-label.html       # 白标方案
└── vercel.json            # Vercel 配置
```

## 🚀 快速开始

### 本地开发

使用 Python 简单服务器：
```bash
python -m http.server 8000
```

或使用 Node.js：
```bash
npx http-server -p 8000
```

然后访问 http://localhost:8000

### 部署到 Vercel

#### 方法 1: 使用部署脚本（推荐）

**Windows:**
```bash
deploy.bat
```

**Mac/Linux:**
```bash
chmod +x deploy.sh
./deploy.sh
```

#### 方法 2: 使用 Vercel CLI

```bash
# 安装 Vercel CLI
npm install -g vercel

# 登录
vercel login

# 预览部署
vercel

# 生产部署
vercel --prod
```

#### 方法 3: 通过 Git + Vercel

1. 推送代码到 GitHub
2. 在 Vercel 中导入仓库
3. 自动部署

详细部署指南请查看 [DEPLOYMENT.md](DEPLOYMENT.md)

## 🎨 设计系统

### 颜色

- 主色：`#FF6B35` (橙色)
- 次色：`#8B7FD9` (紫色)
- 渐变：`linear-gradient(135deg, #FF6B35 0%, #8B7FD9 100%)`

### 字体

- 系统字体栈：`-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif`

### 断点

- 移动端：< 768px
- 平板：768px - 1024px
- 桌面：> 1024px

## 📄 页面列表

- **首页** (`index.html`) - 产品和解决方案概览
- **产品页**
  - Tapro (`tapro.html`) - 终端支付应用
  - Copilot (`copilot.html`) - ISO/ISV 运营平台
  - Hardware (`hardware.html`) - 支持的终端设备
- **解决方案**
  - Retail (`retail.html`) - 零售解决方案
  - Restaurant (`restaurant.html`) - 餐饮解决方案
  - Wholesale ISO (`wholesale-iso.html`) - 批发 ISO 方案
  - ISV (`startup-iso.html`) - ISV 集成方案
- **其他**
  - White Label (`white-label.html`) - 白标服务
  - Developer (`developer.html`) - 开发者中心
  - Support (`support.html`) - 支持中心
  - Company (`company.html`) - 公司信息
  - Contact (`contact.html`) - 联系我们
  - Pricing (`pricing.html`) - 价格方案

## 🔧 技术栈

- HTML5
- CSS3 (带动画和渐变)
- Vanilla JavaScript
- 响应式设计
- 无框架依赖

## 📝 许可证

MIT License

## 📞 联系方式

- 网站：https://sunbay.com
- 邮箱：contact@sunbay.com

---

**版本：** 1.0.0  
**最后更新：** 2025-11-26
