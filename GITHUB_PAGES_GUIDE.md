# GitHub Pages Deployment Guide

Complete step-by-step guide to deploy your Network Switching Tutorial to GitHub Pages.

---

## 🎯 What You'll Get

After following this guide:
- ✅ Your tutorial will be live at `https://YOUR-USERNAME.github.io/network-switching-tutorial/`
- ✅ Free hosting forever
- ✅ Automatic HTTPS
- ✅ Updates deploy automatically when you push changes
- ✅ Custom domain support (optional)

---

## 📋 Prerequisites

- GitHub account ([Create one here](https://github.com/signup))
- Git installed on your computer ([Download here](https://git-scm.com/downloads))
- Basic terminal/command line knowledge (optional but helpful)

---

## 🚀 Method 1: Using GitHub Web Interface (Easiest - 5 minutes)

Perfect if you don't want to use Git commands.

### Step 1: Create a New Repository

1. Go to [GitHub](https://github.com)
2. Click the **"+"** icon (top right) → **"New repository"**
3. Fill in the details:
   - **Repository name:** `network-switching-tutorial` (or your preferred name)
   - **Description:** "Interactive tutorial for network switching concepts"
   - **Public** (required for free GitHub Pages)
   - ✅ Check "Add a README file"
4. Click **"Create repository"**

### Step 2: Upload Files

1. In your new repository, click **"Add file"** → **"Upload files"**
2. Drag and drop these files:
   - `index.html`
   - `README.md` (if you want to replace the default)
3. Scroll down and click **"Commit changes"**

### Step 3: Enable GitHub Pages

1. Go to **Settings** tab (in your repository)
2. Scroll down to **"Pages"** section (left sidebar)
3. Under **"Source"**:
   - Branch: Select **"main"**
   - Folder: Select **"/ (root)"**
4. Click **"Save"**

### Step 4: Access Your Site

1. Wait 1-2 minutes for deployment
2. Refresh the Settings → Pages page
3. You'll see: **"Your site is live at https://YOUR-USERNAME.github.io/network-switching-tutorial/"**
4. Click the link to view your tutorial!

---

## 🚀 Method 2: Using Git Command Line (Recommended - 10 minutes)

Best if you're comfortable with terminal/command line.

### Step 1: Create Repository on GitHub

1. Go to [GitHub](https://github.com)
2. Click **"+"** → **"New repository"**
3. Name it: `network-switching-tutorial`
4. Make it **Public**
5. **DON'T** initialize with README
6. Click **"Create repository"**

### Step 2: Initialize Local Repository

Open terminal/command prompt and run:

```bash
# Navigate to where you downloaded the files
cd /path/to/your/files

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: Network Switching Tutorial"

# Add GitHub as remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/network-switching-tutorial.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

### Step 3: Enable GitHub Pages

```bash
# You can enable via web interface (Settings → Pages)
# OR use GitHub CLI if installed:
gh repo edit --enable-pages --pages-branch main
```

### Step 4: Verify Deployment

```bash
# Check deployment status
gh browse
# Opens your repository in browser

# Direct link to your site:
# https://YOUR-USERNAME.github.io/network-switching-tutorial/
```

---

## 🚀 Method 3: Fork This Repository (Fastest - 2 minutes)

If the tutorial is already on GitHub:

### Step 1: Fork the Repository

1. Go to the original repository
2. Click **"Fork"** button (top right)
3. Select your account
4. Wait for forking to complete

### Step 2: Enable GitHub Pages

1. Go to **Settings** → **Pages**
2. Source: **main** branch, **/ (root)** folder
3. Click **"Save"**

### Step 3: Access Your Site

Your site is now live at:
```
https://YOUR-USERNAME.github.io/network-switching-tutorial/
```

---

## ⚙️ Configuration Options

### Custom Domain (Optional)

Want your tutorial at `tutorial.yourdomain.com`?

1. **Add CNAME file** to repository:
   ```
   tutorial.yourdomain.com
   ```

2. **Configure DNS** with your domain provider:
   ```
   Type: CNAME
   Name: tutorial
   Value: YOUR-USERNAME.github.io
   ```

3. **In GitHub Settings → Pages:**
   - Enter your custom domain
   - Wait for DNS check
   - Enable HTTPS

### Enforce HTTPS

In Settings → Pages:
- ✅ Check "Enforce HTTPS"

### 404 Page (Optional)

Create `404.html` in your repository:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Page Not Found</title>
</head>
<body>
    <h1>404 - Page Not Found</h1>
    <p><a href="/">Return to Tutorial</a></p>
</body>
</html>
```

---

## 🔄 Updating Your Site

### Via Web Interface

1. Navigate to the file in GitHub
2. Click the pencil icon (Edit)
3. Make changes
4. Click **"Commit changes"**
5. Wait ~1 minute for auto-deployment

### Via Git Command Line

```bash
# Make your changes to files

# Stage changes
git add .

# Commit with message
git commit -m "Update: describe your changes"

# Push to GitHub
git push

# Site auto-updates in ~1 minute
```

---

## 🐛 Troubleshooting

### Site Not Loading

**Problem:** 404 error or blank page

**Solutions:**
1. Check Settings → Pages shows "Your site is published"
2. Verify `index.html` exists in root directory (not in subfolder)
3. Wait 2-3 minutes after enabling Pages
4. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
5. Check file name is exactly `index.html` (lowercase)

### Changes Not Showing

**Problem:** Updates don't appear on site

**Solutions:**
1. Wait 1-2 minutes for build/deployment
2. Hard refresh browser (Ctrl+Shift+R)
3. Check Actions tab for build errors
4. Verify commit was successful
5. Try incognito/private browsing mode

### React Not Loading

**Problem:** Blank page or "React is not defined" error

**Solutions:**
1. Check browser console (F12) for errors
2. Verify CDN links in `index.html` are correct
3. Check internet connection (CDN scripts need to load)
4. Try different browser
5. Disable browser extensions temporarily

### Repository Name Issues

**Problem:** Site URL doesn't work

**Solutions:**
1. Repository must be **public** for free GitHub Pages
2. Repository name becomes part of URL: `github.io/REPO-NAME/`
3. If you want `username.github.io` as URL, name repo exactly: `username.github.io`

---

## 📊 Monitoring Deployments

### Check Build Status

1. Go to **Actions** tab in your repository
2. See deployment history
3. Click on any deployment for details
4. Green checkmark = successful
5. Red X = failed (click for error details)

### View Deployment Logs

```bash
# Using GitHub CLI
gh run list
gh run view [run-id]
```

---

## 🎨 Advanced Configuration

### Add Google Analytics (Optional)

In `index.html`, add before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### Add Meta Tags for Social Sharing

In `index.html` `<head>`:

```html
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://YOUR-USERNAME.github.io/network-switching-tutorial/">
<meta property="og:title" content="Network Switching Tutorial">
<meta property="og:description" content="Interactive tutorial for learning circuit and packet switching">
<meta property="og:image" content="https://YOUR-USERNAME.github.io/network-switching-tutorial/preview.png">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://YOUR-USERNAME.github.io/network-switching-tutorial/">
<meta property="twitter:title" content="Network Switching Tutorial">
<meta property="twitter:description" content="Interactive tutorial for learning circuit and packet switching">
<meta property="twitter:image" content="https://YOUR-USERNAME.github.io/network-switching-tutorial/preview.png">
```

### Add favicon

Place `favicon.ico` in root directory, or use inline SVG (already in template):

```html
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>🔌</text></svg>">
```

---

## 📈 Performance Optimization

### Current Performance
- ✅ React loaded from CDN (cached globally)
- ✅ Single HTML file (~50KB)
- ✅ No build process needed
- ✅ Fast Time to Interactive

### Optional Optimizations

1. **Minify HTML** (reduces file size):
   - Use [HTML Minifier](https://www.willpeavy.com/tools/minifier/)

2. **Enable Caching** (automatic with GitHub Pages)

3. **Use CDN for React** (already implemented)

4. **Preconnect to CDNs** - Add to `<head>`:
   ```html
   <link rel="preconnect" href="https://unpkg.com">
   ```

---

## 🔒 Security

GitHub Pages is secure by default:
- ✅ HTTPS enforced
- ✅ DDoS protection
- ✅ No server-side code (pure static site)
- ✅ Sandboxed iframe environment

---

## 💰 Cost

**FREE** ✨
- Unlimited bandwidth
- Unlimited storage (within reason)
- Unlimited deployments
- Free SSL/HTTPS

**Limits:**
- Repository size: 1 GB recommended
- Site size: 1 GB soft limit
- Bandwidth: 100 GB/month soft limit
- Builds: 10 per hour

For most educational projects, these limits are more than sufficient!

---

## ✅ Deployment Checklist

Before going live:
- [ ] Repository is public
- [ ] `index.html` is in root directory
- [ ] README.md is updated with your info
- [ ] GitHub Pages is enabled
- [ ] Site is accessible at GitHub Pages URL
- [ ] All interactive features work
- [ ] Tested on mobile device
- [ ] Tested in multiple browsers
- [ ] Custom domain configured (if using)
- [ ] HTTPS is enforced

---

## 🎓 What's Next?

After deployment:
1. Share your URL with students/colleagues
2. Submit to educational resource directories
3. Add to your resume/portfolio
4. Create additional tutorials
5. Monitor usage with analytics (optional)

---

## 📞 Get Help

- **GitHub Pages Docs:** https://docs.github.com/en/pages
- **GitHub Community:** https://github.community/
- **Status Page:** https://www.githubstatus.com/

---

**Congratulations! Your tutorial is now live on the internet! 🎉**
