cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.8"

  sha256 arm:   "a0feac18b5cca5af9804567da86e7bbf39d7968d5de09455b8a20c23693a2413",
         intel: "613ebb6a55e76719c8b69a63d8981127457ed1c2db5942e49d41b20a3185a5e5"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.8/qterm-darwin-#{arch}.zip"

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
