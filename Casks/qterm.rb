cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"

  sha256 arm:   "cb118b4c621d6b27b22531e7a9dfb73d6ccaff1e73d6554afaa2fe92ca1e9370",
         intel: "07abc5d0f5841fcd523df37cfa40703ce52ed3fc7a932bd12ea53a1193ae697f"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.12/qterm-darwin-#{arch}.zip"

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
