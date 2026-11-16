cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.7"

  sha256 arm:   "159824e50fdf05af87a0a38c98c81b510dbbe0a0106f1713aeda621aa06b7236",
         intel: "a410eebcd0c8e778805a4bb444bd4f4f808ed780b6e18e6eeabd6a0ad85ea01c"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.7/qterm-darwin-#{arch}.zip"

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
