cask "v-clean" do
  version "1.5"
  sha256 "bfe43afaae1ec3e7d2c0ce0ec26642b4afc587bdd5b11124447bede3841fee42"

  url "https://github.com/13awan/homebrew-vclean/raw/main/releases/download/v#{version}/vClean.zip"
  name "vClean"
  desc "Xcode 与 Android 开发缓存清理工具"
  homepage "https://github.com/13awan/homebrew-vclean"

  # Homebrew 只支持 major 代号（:sequoia = macOS 15），无法用 patch 表达 15.7；精确下限仍以 App 内 LSMinimumSystemVersion 为准
  depends_on macos: :sequoia

  app "vClean.app"
end
