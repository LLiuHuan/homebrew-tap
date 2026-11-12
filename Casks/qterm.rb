cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.5"

  sha256 arm:   "c9de2f1ef1d9c5a952b6bdc87be575068c20e07bb640f39ba7b0659436406844",
         intel: "f135623343253efd48816a885def18327e15168186233e52a7a34166f0156363"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.5/qterm-darwin-#{arch}.zip"

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
