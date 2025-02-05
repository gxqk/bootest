# Universal Bootstrapper 🚀

<div align="center">

![GitHub release (latest by date)](https://img.shields.io/github/v/release/your-username/Universal-Bootstrapper?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/your-username/Universal-Bootstrapper?style=for-the-badge)
![C#](https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white)
![.NET](https://img.shields.io/badge/.NET-5C2D91?style=for-the-badge&logo=.net&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

<br>

<img src="preview.png" alt="Universal Bootstrapper Preview" width="600"/>

### 🌟 A modern and elegant bootstrapper for automatically downloading and installing the latest version of your application from GitHub Releases.

[Getting Started](#-getting-started) •
[Features](#-features) •
[Configuration](#%EF%B8%8F-configuration) •
[Documentation](#-documentation) •
[Support](#-support)

</div>

---

## ✨ Features

<table>
<tr>
<td>

### 🎨 Design
- Modern interface with fluid animations
- Real-time clock display
- Dark mode design
- Elegant visual effects
- Smooth transitions

</td>
<td>

### 🛠️ Technical
- GitHub Releases integration
- ZIP/RAR support
- Custom installation path
- Auto-launch option
- Progress tracking

</td>
</tr>
</table>

## 🚀 Getting Started

### Prerequisites

<table>
<tr>
<td>

- Windows 7 or higher
- [.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)
- Visual Studio 2022 (for development)

</td>
<td>

```bash
# Clone the repository
git clone https://github.com/your-username/Universal-Bootstrapper.git

# Open in Visual Studio
# Restore NuGet packages
# Build the project
```

</td>
</tr>
</table>

## ⚙️ Configuration

Edit `Config.cs` to set up your bootstrapper:

```csharp
public static class Config
{
    // Your GitHub username
    public static string GithubUsername { get; } = "your-username";
    
    // Your repository name
    public static string GithubRepository { get; } = "your-repo";
    
    // The executable to launch after installation
    public static string ExecutableName { get; } = "your-app.exe";
}
```

## 🎨 Customization

<table>
<tr>
<td>

### 🎡 Animations
- Fade-in startup
- Hover effects
- Progress bar animations
- Smooth transitions

</td>
<td>

### 🎯 Colors
```css
Primary: #00A2FF
Secondary: #FF00FF
Background: #1E1E1E → #252830
```

</td>
</tr>
</table>

## 🔧 Technical Features

<div align="center">

![Async](https://img.shields.io/badge/Async-Operations-blue?style=for-the-badge)
![XAML](https://img.shields.io/badge/XAML-Animations-purple?style=for-the-badge)
![Error Handling](https://img.shields.io/badge/Error-Handling-red?style=for-the-badge)
![Drag & Drop](https://img.shields.io/badge/Drag%20&%20Drop-Support-green?style=for-the-badge)

</div>

- ⚡ Asynchronous downloads with progress tracking
- 📦 ZIP and RAR archive support
- 🛡️ Comprehensive error handling
- 🎯 Responsive UI with modern animations
- 🔄 Automatic updates from GitHub releases

## 📂 Project Structure

```plaintext
Universal-Bootstrapper/
├── 🎨 Resources/
│   └── icon.ico
├── 📱 Bootstrapper-ui.xaml
├── ⚙️ Bootstrapper-ui.xaml.cs
├── 🛠️ Config.cs
├── 🚀 App.xaml
└── ⚡ App.xaml.cs
```

## 🤝 Contributing

<table>
<tr>
<td>
<a href="https://github.com/your-username/Universal-Bootstrapper/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=your-username/Universal-Bootstrapper" />
</a>
</td>
<td>

1. 🍴 Fork the project
2. 🌿 Create your feature branch
3. 💫 Make your changes
4. 📤 Push to the branch
5. 🎯 Open a Pull Request

</td>
</tr>
</table>

## 📝 License

<div align="center">

Released under the [MIT](LICENSE) license
<br>
Copyright © 2024 Your-Name

</div>

## 🌟 Credits

<div align="center">

Created with ❤️ by [Your-Name]
<br>
Inspired by modern Windows designs
<br>
Custom icons and animations

</div>

## 💫 Support

<div align="center">

[!["Buy Me A Coffee"](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/your-username)
[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/your-server)
[![GitHub Issues](https://img.shields.io/badge/GitHub-Issues-red?style=for-the-badge&logo=github)](https://github.com/your-username/Universal-Bootstrapper/issues)

</div>

---

<div align="center">

### ⭐ Star this repo if you like it!

<br>

![Visitors](https://api.visitorbadge.io/api/visitors?path=your-username%2FUniversal-Bootstrapper&label=VISITORS&countColor=%2337d67a)
![Stars](https://img.shields.io/github/stars/your-username/Universal-Bootstrapper?style=social)

</div>

## 📦 Publishing Your Application

<table>
<tr>
<td>

### 🔄 How It Works
The bootstrapper automatically:
1. Fetches the latest release
2. Downloads ZIP/RAR files
3. Extracts to chosen location
4. Launches your application

</td>
<td>

### 📋 Requirements
- GitHub account
- Public repository
- ZIP/RAR releases
- Proper version tagging

</td>
</tr>
</table>

### Step-by-Step Guide

#### 1️⃣ Create Your GitHub Repository

```bash
# Initialize your local repository
git init
git add .
git commit -m "Initial commit"

# Create repository on GitHub
# Then push your code
git remote add origin https://github.com/your-username/your-repo.git
git push -u origin main
```

#### 2️⃣ Prepare Your Application

1. Organize your files:
```plaintext
your-app/
├── your-app.exe
├── data/
└── other-files/
```

2. Create archive:
   - Compress into `.zip` or `.rar`
   - Include all necessary files
   - Name format: `your-app-v1.0.0.zip`

#### 3️⃣ Create a GitHub Release

<table>
<tr>
<td>

1. Go to your repository
2. Click "Releases"
3. Click "Create a new release"
4. Choose a tag (e.g., `v1.0.0`)
5. Add release title
6. Add description
7. Upload your ZIP/RAR file
8. Publish release

</td>
<td>

Example release structure:
```plaintext
Title: v1.0.0 - Initial Release
Tag: v1.0.0
Files: your-app-v1.0.0.zip
Description:
- Feature 1
- Feature 2
- Bug fixes
```

</td>
</tr>
</table>

#### 4️⃣ Configure Bootstrapper

1. Fork this repository
2. Update `Config.cs`:
```csharp
public static class Config
{
    public static string GithubUsername { get; } = "your-username";    // Your GitHub username
    public static string GithubRepository { get; } = "your-repo";     // Your repository name
    public static string ExecutableName { get; } = "your-app.exe";    // Your app's executable
}
```

#### 5️⃣ Build & Distribute

1. Build the bootstrapper
2. Share the bootstrapper executable
3. Users will always get the latest version!

### 🔄 Update Process

1. Prepare new version
2. Create new release on GitHub
3. Upload new ZIP/RAR
4. Publish release
5. Done! Bootstrapper will automatically download the latest version

### 📝 Release Tips

- Use semantic versioning (`v1.0.0`, `v1.0.1`, etc.)
- Include changelogs in release descriptions
- Test ZIP/RAR files before publishing
- Keep old releases for version history
- Use clear release titles and descriptions

### ⚠️ Common Issues

<table>
<tr>
<td>

#### Problems
- Release not found
- Download fails
- Extraction error
- Launch fails

</td>
<td>

#### Solutions
- Check repository visibility
- Verify ZIP/RAR format
- Check file permissions
- Validate executable path

</td>
</tr>
</table>
