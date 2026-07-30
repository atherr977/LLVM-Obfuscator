# LLVM Obfuscator GUI

A modern, professional desktop application for LLVM code obfuscation built with Avalonia UI. This tool provides an intuitive graphical interface for applying various obfuscation techniques to LLVM IR code.

![LLVM Obfuscator GUI](https://img.shields.io/badge/Platform-Windows-blue)
![.NET](https://img.shields.io/badge/.NET-8.0-purple)
![Avalonia UI](https://img.shields.io/badge/UI-Avalonia-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## ✨ Features

- **🎯 Modern UI**: Clean, professional interface built with Avalonia UI
- **📁 File Selection**: Easy file browsing with drag-and-drop support
- **⚙️ Configuration**: Multiple obfuscation presets and custom options
- **📊 Results Display**: Clear visualization of obfuscation metrics
- **🔄 Workflow**: Seamless navigation between steps
- **💾 Export**: Download obfuscated files and reports
- **🚀 Performance**: Optimized for large codebases

## 🖼️ Screenshots
<img width="743" height="729" alt="Screenshot 2025-10-02 213630" src="https://github.com/user-attachments/assets/960e0581-3640-4906-aa3d-0bfa9af56e09" />

### File Selection
Clean file selection interface with drag-and-drop support.

### Configuration

Multiple obfuscation presets:
- **Basic**: Light obfuscation for performance
- **Standard**: Balanced obfuscation
- **Advanced**: Maximum obfuscation
- **Custom**: User-defined settings

### Results
Professional results display with metrics and download options.

## 🚀 Quick Start

### Prerequisites
- Windows 10/11 (x64)
- .NET 8.0 Runtime (included in self-contained build)

### Installation
1. Download the latest release from the [Releases](https://github.com/akashmir/llvm-Obfuscator/releases) page
2. Extract `LLVMObfuscator.exe` to your desired location
3. Run the executable

### Usage
1. **Select File**: Choose your LLVM IR file (.ll) or bitcode file (.bc)
2. **Configure**: Select a preset or customize obfuscation settings
3. **Process**: Click "Start Obfuscation" to begin processing
4. **Download**: Review results and download obfuscated files

## 🛠️ Development

### Building from Source

#### Prerequisites
- .NET 8.0 SDK
- Visual Studio 2022 or VS Code

#### Build Steps
```bash
# Clone the repository
git clone https://github.com/akashmir/llvm-Obfuscator.git
cd llvm-obfuscator

# Restore dependencies
dotnet restore

# Build the application
dotnet build --configuration Release

# Run the application
dotnet run --project LLVMObfuscator
```

#### Creating Release Build
```bash
# Use the provided build script
./build.bat

# Or manually publish
dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true
```

## 📋 Obfuscation Techniques

The application supports various obfuscation techniques:

- **Control Flow Flattening**: Restructures program flow
- **Function Inlining**: Inlines function calls
- **Dead Code Insertion**: Adds non-functional code
- **String Encryption**: Encrypts string literals
- **Variable Substitution**: Replaces variable names
- **Instruction Substitution**: Replaces instructions with equivalents
- **Bogus Control Flow**: Adds fake control flow
- **Function Splitting**: Splits functions into multiple parts

## 🎨 UI Features

- **Modern Design**: Clean, professional interface
- **Responsive Layout**: Adapts to different screen sizes
- **Dark/Light Theme**: Automatic theme detection
- **Accessibility**: Full keyboard navigation support
- **Progress Tracking**: Real-time progress updates
- **Error Handling**: Comprehensive error reporting

## 📁 Project Structure

```
gui/
├── LLVMObfuscator/          # Main application
│   ├── Views/                       # UI views (XAML)
│   ├── ViewModels/                  # MVVM view models
│   ├── Services/                    # Business logic services
│   ├── Models/                      # Data models
│   └── Resources/                   # Assets and resources
├── build-avalonia.bat               # Build script
└── README.md                        # This file
```

## 🔧 Configuration

### Obfuscation Presets

| Preset | Description | Use Case |
|--------|-------------|----------|
| **Basic** | Light obfuscation | Performance-critical applications |
| **Standard** | Balanced approach | General-purpose obfuscation |
| **Advanced** | Maximum protection | High-security requirements |
| **Custom** | User-defined | Specific requirements |

### Supported File Formats
- LLVM IR files (`.ll`)
- LLVM Bitcode files (`.bc`)
- Clang-generated files

## 🐛 Troubleshooting

### Common Issues

**Application won't start**
- Ensure you have .NET 8.0 Runtime installed
- Check Windows version compatibility (Windows 10/11 required)

**File processing fails**
- Verify file format (must be valid LLVM IR or bitcode)
- Check file permissions
- Ensure sufficient disk space

**Performance issues**
- Close other applications to free memory
- Use Basic preset for large files
- Consider splitting large files

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Setup
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Avalonia UI](https://avaloniaui.net/) - Cross-platform UI framework
- [LLVM Project](https://llvm.org/) - Compiler infrastructure
- [Community Toolkit MVVM](https://github.com/CommunityToolkit/dotnet) - MVVM helpers

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/akashmir/llvm-obfuscator/issues)
- **Discussions**: [GitHub Discussions](https://github.com/akashmir/llvm-obfuscator/discussions)
- **Email**: akashbashir2442@gmail.com

## 🔄 Changelog

### Version 4.0.0 (Latest)
- ✨ Complete UI redesign with Avalonia
- 🎯 Professional interface with modern design
- 🔧 Improved obfuscation engine
- 📊 Enhanced results visualization
- 🚀 Better performance and stability
- 🐛 Fixed various UI issues

### Previous Versions
- Version 3.x: WinForms-based GUI
- Version 2.x: Command-line interface
- Version 1.x: Initial release

---

**Made with ❤️ by Akash**
