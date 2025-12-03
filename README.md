# Network Switching Tutorial 🔌

Interactive web application for learning about network switching mechanisms - Circuit Switching vs Packet Switching.

**🚀 Live Demo:** [https://CryptLabs.github.io/network-switching-tutorial/](https://YOUR-USERNAME.github.io/network-switching-tutorial/)

---

## 📚 Features

- **Interactive Learning:** Explore circuit and packet switching concepts with visual examples
- **Real-time Calculator:** Input custom parameters and see transmission times instantly
- **Two Network Topologies:** 
  - Version 1: Simple tandem network
  - Version 2: Star network with congestion
- **Responsive Design:** Works perfectly on desktop, tablet, and mobile
- **Zero Installation:** Runs entirely in the browser

---

## 🎯 Learning Outcomes

This tutorial helps you:
- Understand key characteristics of packet and circuit switched networks
- Observe operational differences between switching mechanisms
- Identify how network topology affects performance
- Calculate transmission times for different scenarios

---

## 🚀 Quick Start

### View Online
Visit the live demo: [https://YOUR-USERNAME.github.io/network-switching-tutorial/](https://YOUR-USERNAME.github.io/network-switching-tutorial/)

### Run Locally
1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR-USERNAME/network-switching-tutorial.git
   ```

2. Open `index.html` in your browser
   - No build process required!
   - No dependencies to install!
   - Just open and use!

### Deploy to GitHub Pages

1. **Fork or Clone** this repository to your GitHub account

2. **Enable GitHub Pages:**
   - Go to repository Settings
   - Navigate to "Pages" section
   - Under "Source", select "main" branch
   - Click "Save"

3. **Access your site:**
   - Your site will be live at: `https://YOUR-USERNAME.github.io/network-switching-tutorial/`
   - Wait 1-2 minutes for deployment

---

## 📖 Usage Guide

### Introduction Tab
- Overview of circuit and packet switching
- Advantages and disadvantages comparison
- Variable definitions and formulas

### Version 1: Tandem Network
- Simple two-node topology
- Direct A → B transmission
- Formula: **T = U + L/R + Y** (Circuit) | **T = NX + (L+NH)/R + Y** (Packet)

### Version 2: Star Network
- Star topology with central hub
- Three sources → three destinations through bottleneck
- Demonstrates congestion effects

### Calculator
- Interactive parameter adjustment
- Real-time calculation results
- Visual comparison of switching methods
- Toggle between Version 1 and Version 2

---

## 🔧 Customization

### Change Colors
Edit the CSS variables in `index.html`:

```javascript
// Primary colors
background: '#4f46e5'  // Indigo
background: '#16a34a'  // Green

// Gradients
background: 'linear-gradient(to bottom right, #dbeafe, #e0e7ff)'
```

### Modify Default Values
In the `useState` hook:

```javascript
const [params, setParams] = useState({
  L: 1000,   // Message length
  R: 4000,   // Transmission rate
  Y: 1,      // Transfer delay
  U: 1,      // Setup time
  P: 125,    // Packet size
  H: 25,     // Header size
  X: 0.1     // Routing delay
});
```

### Add More Tabs
Extend the navigation array:

```javascript
{ id: 'newTab', label: 'New Section' }
```

---

## 📐 Technical Details

### Built With
- **React 18** - UI library
- **Babel Standalone** - JSX transformation
- **Lucide Icons** - Icon library
- **Pure CSS** - No frameworks needed

### Browser Support
- ✅ Chrome/Edge (Chromium)
- ✅ Firefox
- ✅ Safari
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

### Performance
- **First Load:** ~2-3 seconds (loading React from CDN)
- **Page Size:** ~170KB total
- **No Backend:** Runs entirely client-side

---

## 📱 Mobile Responsive

The tutorial automatically adapts to:
- **Desktop:** Full multi-column layout
- **Tablet:** Responsive grid system
- **Mobile:** Single column with optimized inputs

Uses CSS `clamp()` for fluid typography and responsive spacing.

---

## 🎓 Educational Use

Perfect for:
- Computer networking courses (CSC8021 and similar)
- Self-study and exam preparation
- Teaching demonstrations
- Homework and coursework practice

### Covered Topics
- Circuit switching fundamentals
- Packet switching principles
- Network topology impact
- Transmission time calculations
- Trade-offs and performance analysis

---

## 🤝 Contributing

Contributions welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Ideas for Contributions
- Add more network topologies (ring, mesh, bus)
- Implement animated visualizations
- Add more example scenarios
- Create quiz/assessment mode
- Add dark mode support
- Multi-language support

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

Free to use for educational purposes. Attribution appreciated but not required.

---

## 🐛 Known Issues

- None currently. Please report issues on GitHub!

---

## 📞 Support

- **Issues:** [GitHub Issues](https://github.com/YOUR-USERNAME/network-switching-tutorial/issues)
- **Questions:** Open a discussion on GitHub
- **Updates:** Watch this repo for updates

---

## 🔗 Related Resources

- [Computer Networking: A Top-Down Approach](https://gaia.cs.umass.edu/kurose_ross/index.php)
- [Network Simulator Documentation](https://www.nsnam.org/)
- [RFC 791 - Internet Protocol](https://tools.ietf.org/html/rfc791)

---

## ⭐ Show Your Support

If this tutorial helped you, please give it a star ⭐ on GitHub!

---

## 📊 Stats

![GitHub stars](https://img.shields.io/github/stars/YOUR-USERNAME/network-switching-tutorial?style=social)
![GitHub forks](https://img.shields.io/github/forks/YOUR-USERNAME/network-switching-tutorial?style=social)
![GitHub issues](https://img.shields.io/github/issues/YOUR-USERNAME/network-switching-tutorial)
![GitHub license](https://img.shields.io/github/license/YOUR-USERNAME/network-switching-tutorial)

---

**Made with ❤️ for Computer Networking Students**
