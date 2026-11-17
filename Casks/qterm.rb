cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.9"

  sha256 arm:   "0e79255ea19f8c8177d1b32cac0053fd1f37ca97d534b3f41c73c68d99130304",
         intel: "4b5595c27d25c9f962f1a4e8ef70f9881b3d3493a4575ad72eb0c9d040d7d918"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.9/qterm-darwin-#{arch}.zip"

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
