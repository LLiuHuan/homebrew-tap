cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"

  sha256 arm:   "752e53e46cdfb68faa6ac157db9fd33a86cd835edfce048a3b0275f8f635b5fd",
         intel: "9b411127d7d18e611f2484b5cf66deef47778f4fc2445b9dc1faa21d02170b46"

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
