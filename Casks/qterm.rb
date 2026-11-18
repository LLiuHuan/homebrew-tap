cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.10"

  sha256 arm:   "94820db85ec67e2a257d540a2637a1d4ac33ef5eb4b61cd8c4e33949ec180514",
         intel: "92b195c3b2af1ad98157bbfc7bc0ae6b814f7a77837f6ef1410d51b914226c6a"

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
