# 🚀 Quick Start Guide - GitHub Pages Deployment

**Welcome!** This guide will get your Network Switching Tutorial live on GitHub Pages in just 10 minutes.

---

## 📦 What You Have

Your download includes everything needed for a complete GitHub Pages deployment:

```
network-switching-tutorial/
├── index.html                    # Main tutorial application
├── README.md                     # Project documentation
├── LICENSE                       # MIT License
├── GITHUB_PAGES_GUIDE.md        # Detailed deployment guide
├── _config.yml                   # Jekyll configuration
├── .gitignore                    # Git ignore rules
└── deploy.sh                     # Quick deployment script (Mac/Linux)
```

---

## ⚡ Three Ways to Deploy (Choose One)

### 🌟 Option 1: Automatic Script (Easiest - Mac/Linux)

Perfect if you're on Mac or Linux and want a guided setup:

```bash
# Make script executable
chmod +x deploy.sh

# Run the script
./deploy.sh
```

The script will:
- ✅ Initialize git repository
- ✅ Guide you through setup
- ✅ Push to GitHub
- ✅ Give you next steps

---

### 🌟 Option 2: Manual Git Commands (10 minutes)

**Step 1:** Create repository on GitHub
1. Go to [github.com/new](https://github.com/new)
2. Name: `network-switching-tutorial`
3. Make it **Public**
4. **Don't** check "Initialize with README"
5. Click "Create repository"

**Step 2:** Deploy from terminal

```bash
# Navigate to your folder
cd /path/to/network-switching-tutorial

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Network Switching Tutorial"

# Add GitHub remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/network-switching-tutorial.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Step 3:** Enable GitHub Pages
1. Go to repository **Settings** → **Pages**
2. Source: Branch **main**, Folder **/ (root)**
3. Click **Save**
4. Wait 2 minutes
5. Visit: `https://YOUR-USERNAME.github.io/network-switching-tutorial/`

---

### 🌟 Option 3: GitHub Web Interface (No Git Required - 5 minutes)

Perfect if you don't have Git installed:

**Step 1:** Create repository
1. Go to [github.com/new](https://github.com/new)
2. Name: `network-switching-tutorial`
3. Make it **Public**
4. ✅ Check "Add a README file"
5. Click "Create repository"

**Step 2:** Upload files
1. Click "Add file" → "Upload files"
2. Drag all files from your download into the upload area
3. Click "Commit changes"

**Step 3:** Enable Pages
1. Go to **Settings** → **Pages**
2. Source: **main** branch, **/ (root)** folder
3. Click **Save**
4. Wait 2 minutes
5. Your site is live!

---

## ✅ Verify Deployment

After deployment, check:

1. **Repository:** Visit `https://github.com/YOUR-USERNAME/network-switching-tutorial`
2. **Website:** Visit `https://YOUR-USERNAME.github.io/network-switching-tutorial/`
3. **Test Features:**
   - Click different tabs
   - Try the calculator
   - Test on mobile (if possible)

---

## 🎯 Your Live URLs

After deployment, you'll have:

- **Repository:** `https://github.com/YOUR-USERNAME/network-switching-tutorial`
- **Live Site:** `https://YOUR-USERNAME.github.io/network-switching-tutorial/`
- **Share Link:** Same as live site URL

---

## 📝 Customization Checklist

Before sharing publicly, update these:

### In README.md:
- [ ] Replace `YOUR-USERNAME` with your actual GitHub username (multiple places)
- [ ] Update live demo link
- [ ] Add your name/attribution
- [ ] Update badges at bottom

### In _config.yml:
- [ ] Change `github_username` to yours
- [ ] Update `repository` name

### Optional (index.html):
- [ ] Change colors to match your branding
- [ ] Add your institution name
- [ ] Modify default parameter values

---

## 🔄 Making Updates Later

After initial deployment, to update:

```bash
# Make changes to your files

# Stage changes
git add .

# Commit with descriptive message
git commit -m "Update: describe what changed"

# Push to GitHub
git push

# Wait 1-2 minutes for auto-deployment
```

OR use GitHub web interface:
1. Navigate to file on GitHub
2. Click pencil icon (Edit)
3. Make changes
4. Click "Commit changes"

---

## 🐛 Troubleshooting

### Site shows 404
- **Check:** Is repository public?
- **Check:** Is Pages enabled in Settings?
- **Check:** Is `index.html` in root (not in a subfolder)?
- **Wait:** 2-3 minutes after enabling Pages

### Changes not showing
- **Wait:** 1-2 minutes for build
- **Try:** Hard refresh (Ctrl+Shift+R or Cmd+Shift+R)
- **Try:** Incognito/private mode
- **Check:** Actions tab for deployment status

### Blank page
- **Check:** Browser console (F12) for errors
- **Try:** Different browser
- **Check:** Internet connection (React loads from CDN)

### Git push fails
- **Check:** Repository exists on GitHub
- **Check:** Remote URL is correct: `git remote -v`
- **Try:** Using personal access token instead of password
- **See:** [GitHub authentication docs](https://docs.github.com/en/authentication)

---

## 📚 Additional Resources

- **Detailed Guide:** See `GITHUB_PAGES_GUIDE.md` for comprehensive instructions
- **GitHub Pages Docs:** https://docs.github.com/en/pages
- **Git Tutorial:** https://git-scm.com/docs/gittutorial
- **GitHub CLI:** https://cli.github.com/ (alternative to web interface)

---

## 🎓 What's Included in the Tutorial

Your deployed site includes:

### Introduction Tab
- Overview of both switching methods
- Visual comparison cards
- Advantages and disadvantages
- Complete variable definitions

### Version 1: Tandem Network
- Simple two-node topology explanation
- Key insights about trade-offs
- Formula breakdowns

### Version 2: Star Network  
- Star topology with congestion point
- Concurrent transmission explanation
- Bottleneck analysis

### Interactive Calculator
- Real-time parameter adjustment
- Instant calculation results
- Visual winner determination
- Switch between Version 1 and 2
- Mobile-responsive input fields

---

## 🌐 Sharing Your Tutorial

After deployment, you can:

- ✅ Share the URL with students
- ✅ Add to your CV/portfolio
- ✅ Submit to educational directories
- ✅ Link from course materials
- ✅ Embed in LMS (Canvas, Moodle, etc.)

### Embed Code for LMS:

```html
<iframe 
    src="https://YOUR-USERNAME.github.io/network-switching-tutorial/" 
    width="100%" 
    height="800px" 
    frameborder="0">
</iframe>
```

---

## 💡 Pro Tips

1. **Star your own repo** to bookmark it
2. **Enable notifications** to monitor issues/discussions
3. **Add topics** to repo (networking, education, tutorial)
4. **Create releases** to tag stable versions
5. **Add screenshots** to README for better presentation

---

## 🎉 Success!

Once deployed, your tutorial is:
- ✅ Live and accessible worldwide
- ✅ Free forever (GitHub Pages)
- ✅ Automatically HTTPS secured
- ✅ Fast and reliable
- ✅ Mobile responsive
- ✅ Easy to update

**Congratulations on your deployment!** 🚀

---

## 📞 Need Help?

- **Issues:** Check `GITHUB_PAGES_GUIDE.md` troubleshooting section
- **Questions:** GitHub Community Forums
- **Bugs:** Report on GitHub Issues (your repo)
- **Updates:** Watch this repo for improvements

---

## ⏱️ Time Estimates

- **Option 1 (Script):** 5-7 minutes
- **Option 2 (Git Commands):** 10-12 minutes  
- **Option 3 (Web Upload):** 5-8 minutes

All options include waiting time for GitHub Pages deployment (~2 minutes).

---

**Ready to deploy? Pick your option above and get started! 🚀**
