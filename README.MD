# Universal Bootstrapper 🚀

<div align="center">

![GitHub](https://img.shields.io/github/license/your-username/Universal-Bootstrapper?style=for-the-badge)
![C#](https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white)
![.NET](https://img.shields.io/badge/.NET-5C2D91?style=for-the-badge&logo=.net&logoColor=white)
![XAML](https://img.shields.io/badge/XAML-0C54C2?style=for-the-badge&logo=xaml&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

<br>

<img src="preview.png" alt="Universal Bootstrapper Preview" width="600"/>

### 🌟 A modern and elegant bootstrapper that automatically downloads and installs the latest version of your application from GitHub Releases.

[Getting Started](#-getting-started) •
[Features](#-features) •
[Building](#%EF%B8%8F-building-the-bootstrapper) •
[Publishing](#-publishing-your-application)

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
- Single file executable (.exe)
- No dependencies required
- GitHub Releases integration
- ZIP/RAR support
- Custom installation path

</td>
</tr>
</table>

## 🚀 Getting Started

### Prerequisites

<table>
<tr>
<td>

For Development:
- Windows 10/11
- Visual Studio 2022
- .NET 7 SDK

For Users:
- Windows 64-bit
- No other requirements!

</td>
<td>

```bash
# Clone the repository
git clone https://github.com/your-username/Universal-Bootstrapper.git

# Open in Visual Studio 2022
# Build the project
```

</td>
</tr>
</table>

## 📦 Publishing Your Application

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

#### 2️⃣ Create a GitHub Release

<table>
<tr>
<td>

1. Go to your repository
2. Click "Releases"
3. Click "Create a new release"
4. Add a title (e.g., "Latest Update")
5. Upload your ZIP/RAR file
6. Click "Publish release"

That's it! The bootstrapper will automatically download the latest release.

</td>
<td>

Example release structure:
```plaintext
Title: Latest Update
Files: your-app.zip
Description (optional):
- New features
- Bug fixes
```

💡 Tip: The bootstrapper always downloads 
the most recent release!

</td>
</tr>
</table>

## ⚙️ Building the Bootstrapper

### Visual Studio 2022 Method (Recommended)

1. Open the solution in Visual Studio 2022
2. Right-click on the project
3. Click "Publish"
4. Create new profile:
   - Target: Folder
   - Configuration: Release
   - Target Framework: net7.0-windows
   - Deployment Mode: Self-contained
   - Target Runtime: win-x64
   - File Format: Single file
5. Click "Publish"

Your standalone .exe will be created at:
```
src\bin\Release\net7.0-windows\win-x64\publish\bootstrapper.exe
```

💡 Tip: This is a single file that contains everything needed to run on any Windows 64-bit PC!

### Project Configuration

```xml
<PropertyGroup>
  <OutputType>WinExe</OutputType>
  <TargetFramework>net7.0-windows</TargetFramework>
  <PublishSingleFile>true</PublishSingleFile>
  <SelfContained>true</SelfContained>
  <RuntimeIdentifier>win-x64</RuntimeIdentifier>
  <EnableWindowsTargeting>true</EnableWindowsTargeting>
  <IncludeNativeLibrariesForSelfExtract>true</IncludeNativeLibrariesForSelfExtract>
</PropertyGroup>
```

## 🔧 Configuration

Update `Config.cs`:
```csharp
public static class Config
{
    public static string GithubUsername { get; } = "your-username";    // Your GitHub username
    public static string GithubRepository { get; } = "your-repo";     // Your repository name
    public static string ExecutableName { get; } = "your-app.exe";    // Your app's executable
}
```

## 📝 Release Tips

- Keep file names simple (e.g., `app.zip`, `program.rar`)
- Test your archives before publishing
- Include clear descriptions of changes
- Make sure your executable name matches `Config.cs`

## ⚠️ Common Issues

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

## 💫 Support

<div align="center">

[![GitHub Issues](https://img.shields.io/badge/GitHub-Issues-red?style=for-the-badge&logo=github)](https://github.com/your-username/Universal-Bootstrapper/issues)

</div>

---

## 📝 License

<div align="center">

Released under the [MIT](LICENSE) license
<br>
Copyright © 2024 Skyflizz

</div>

## 🌟 Credits

<div align="center">

Created with ❤️ by [Skyflizz]
<br>
Inspired by modern Windows designs
<br>
Custom icons and animations

</div>

---

<div align="center">

### ⭐ Star this repo if you like it!

<br>

![Visitors](https://api.visitorbadge.io/api/visitors?path=your-username%2FUniversal-Bootstrapper&label=VISITORS&countColor=%2337d67a)
![Stars](https://img.shields.io/github/stars/gxqk/bootest?style=social)

</div>

<div align="right">
<sub>README.md generated with ❤️ by GPT Claude</sub>
</div> 
