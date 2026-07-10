# homebrew-vclean

**vClean** 是一款 macOS 应用，用于管理和清理 Xcode 与 Android 开发缓存，帮助开发者安全释放磁盘空间。

本仓库通过 [Homebrew](https://brew.sh) 分发该应用，作为第三方 Tap 提供安装、升级与卸载。

## 功能特性

- 扫描并展示 Xcode 相关目录占用：DerivedData、Archives、Simulators、SwiftUI 预览、Playground、DeviceSupport
- 支持 Android 开发缓存：Gradle 缓存、AVD、模拟器缓存、Android Studio 缓存、SDK 系统镜像等
- 按大小、时间排序，批量安全删除，删除前确认
- 使用安全作用域书签记住目录访问权限
- 拖放添加自定义目录
- 中英文界面

## 环境要求

- 应用要求 macOS **15.7** 或更高
- 已安装 [Homebrew](https://brew.sh)

## 安装

```bash
brew tap 13awan/vclean
brew install --cask v-clean
```

## 升级

```bash
brew upgrade --cask v-clean
```

## 卸载

```bash
brew uninstall --cask v-clean
```

若不再需要本 Tap，可移除：

```bash
brew untap 13awan/vclean
```

## 发布新版本

在 vClean 源码仓库执行 `fastlane release` 生成已签名、已公证的 `dist/vClean.app` 后，在本仓库运行：

```bash
./scripts/release.sh "/path/to/vClean.app"
```

脚本会打包 zip、更新 Cask 中的版本号与 SHA256，随后提交并推送即可。
