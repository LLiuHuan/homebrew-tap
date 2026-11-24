cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.15"

  sha256 arm:   "62419e1611176819c82b52751193797751d3576bccdd12388c9b6792176cda41",
         intel: "5d72a62edb834d065aaee18d9766eabfaa538ea96d0e06120dc282fbe446c93c"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.15/qterm-darwin-#{arch}.zip"

  name "Qterm"
  desc "Cross-platform terminal and remote desktop client"
  homepage "https://github.com/LLiuHuan/Qterm"

  depends_on macos: :monterey

  app "qterm.app"

  caveats do
    <<~EOS
      This Qterm release uses a free ad-hoc code signature and is not notarized by Apple.
      macOS may require allowing Qterm in System Settings > Privacy & Security after installation.
    EOS
  end
end
