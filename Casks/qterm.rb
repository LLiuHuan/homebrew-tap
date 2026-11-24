cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.14"

  sha256 arm:   "85ed334f912b7050e7db82fb8d1d4c635c49f4ba1396437ae6312dbe630cda44",
         intel: "7f7f1328a841134545ccb0fc5e938a62ddf5fd04bce652208beb86f8e2550a2f"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.14/qterm-darwin-#{arch}.zip"

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
