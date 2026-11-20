cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"

  sha256 arm:   "12aebc5871c389a1100d6cedc27c6d30222c8400effd5e85eb96d4bdefcad91c",
         intel: "83924367c3720601546168128a512c5e524517fd08ec56616c24790de9c9ca83"

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
