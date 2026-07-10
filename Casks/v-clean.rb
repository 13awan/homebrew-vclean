cask "v-clean" do
  version "1.4"
  sha256 "34eb9ac7be2c35e6adba191579f7d3cbe97f0072978cb206d4d35ac21aed3f4f"

  url "https://github.com/13awan/homebrew-vclean/raw/main/releases/download/v#{version}/vClean.zip"
  name "vClean"
  desc "Xcode 与 Android 开发缓存清理工具"
  homepage "https://github.com/13awan/homebrew-vclean"

  # Homebrew 只支持 major 代号（:sequoia = macOS 15），无法用 patch 表达 15.7；精确下限仍以 App 内 LSMinimumSystemVersion 为准
  depends_on macos: :sequoia

  app "vClean.app"
end
