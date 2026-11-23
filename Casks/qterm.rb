cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"

  sha256 arm:   "9c3a6fa1e7dbf60b076387c774866019fe4c43e12ca04dde9e4ee2df8b571674",
         intel: "40a9bf1417f89105f05fef79584db7efab631de11fa876dda34eb0a075b58d78"

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
