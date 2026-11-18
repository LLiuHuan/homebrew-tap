cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.10"

  sha256 arm:   "4af64210193cd7a509a068573e701c47087a4f5472f329d6db12eb6190be283d",
         intel: "d2f2baecbe9f29bd0cc5093f97fdfe083413de1daef67f92a94635aabcb98690"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.10/qterm-darwin-#{arch}.zip"

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
