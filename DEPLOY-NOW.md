# 🚀 Deploy Now - Step by Step

## Current Status

✅ All code committed and pushed to GitHub  
✅ Vercel configuration fixed  
✅ Ready for deployment

## Deploy to Vercel

### Option 1: Manual Deployment (Recommended)

Open a **Command Prompt** (not PowerShell) and run:

```bash
cd "C:\Users\admin\Documents\Sunbay Project\OfficialSite"
vercel --prod
```

When prompted:
1. **Set up and deploy?** → Press `Y` (Yes)
2. **Which scope?** → Select your account
3. **Link to existing project?** → Press `N` (No) for first time, or `Y` if project exists
4. **What's your project's name?** → `sunbay-official-site` (or press Enter for default)
5. **In which directory is your code located?** → Press Enter (current directory)

### Option 2: Automatic Deployment via GitHub

Since you've already pushed to GitHub, you can:

1. **Visit Vercel Dashboard**
   - Go to https://vercel.com
   - Log in with your GitHub account

2. **Import Project**
   - Click "Add New..." → "Project"
   - Select your repository: `HadrienHsuHui/SunmiOfficialSite`
   - Click "Import"

3. **Configure (should auto-detect)**
   - Framework Preset: `Other`
   - Root Directory: `./`
   - Build Command: (leave empty)
   - Output Directory: `.`
   - Click "Deploy"

4. **Wait for Deployment**
   - Usually takes 1-2 minutes
   - You'll get a URL when done

### Option 3: Use Deploy Script

Run the deploy script:

**Windows:**
```bash
cd "C:\Users\admin\Documents\Sunbay Project\OfficialSite"
deploy.bat
```

Select option `2` for production deployment.

## Expected Deployment Flow

```
1. Vercel CLI starts
2. Detects static site
3. Uploads files
4. Configures routing
5. Deploys to CDN
6. Provides URL
```

## After Deployment

You'll receive:
- **Production URL**: `https://sunbay-official-site.vercel.app`
- **Custom Domain**: Can be configured in Vercel dashboard

## Verify Deployment

Check these URLs after deployment:
- ✅ Homepage: `https://your-url.vercel.app/`
- ✅ Hardware page: `https://your-url.vercel.app/hardware.html`
- ✅ Retail page: `https://your-url.vercel.app/retail.html`
- ✅ CSS: `https://your-url.vercel.app/css/style.css`
- ✅ Images: `https://your-url.vercel.app/images/hero/hero-main.png`

## Troubleshooting

### PowerShell Execution Policy Error

If you see "cannot be loaded because running scripts is disabled":

**Solution 1: Use Command Prompt instead**
```bash
cmd
cd "C:\Users\admin\Documents\Sunbay Project\OfficialSite"
vercel --prod
```

**Solution 2: Change PowerShell policy (Admin required)**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Vercel CLI Not Found

Install Vercel CLI:
```bash
npm install -g vercel
```

### Authentication Required

If asked to log in:
```bash
vercel login
```

Follow the browser authentication flow.

## Quick Commands

```bash
# Check Vercel CLI version
vercel --version

# Login to Vercel
vercel login

# Preview deployment
vercel

# Production deployment
vercel --prod

# List deployments
vercel ls

# Check project info
vercel inspect
```

## Automatic Deployments

Once connected to GitHub:
- Every push to `main` branch → Production deployment
- Every push to other branches → Preview deployment
- Pull requests → Preview deployment

## Next Steps After Deployment

1. **Test the site** - Visit all pages
2. **Configure custom domain** (optional)
   - Go to Vercel project settings
   - Add your domain
   - Update DNS records
3. **Set up analytics** (optional)
   - Enable Vercel Analytics
4. **Monitor performance**
   - Check Vercel dashboard

## Support

- Vercel Docs: https://vercel.com/docs
- Vercel Support: https://vercel.com/support
- GitHub Repo: https://github.com/HadrienHsuHui/SunmiOfficialSite

---

**Ready to deploy!** 🚀

Open Command Prompt and run:
```bash
cd "C:\Users\admin\Documents\Sunbay Project\OfficialSite"
vercel --prod
```
