cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.5"

  sha256 arm:   "103084749e571142984aee648f19636a072879517e8d946cb78cf08622387f59",
         intel: "d7c6708001f72a405c6599b860011db45f4b97111866a5774d90dcd85223964e"

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
