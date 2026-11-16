cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.7"

  sha256 arm:   "ac89f5b915819e586c0a2009f9bb1d0f2c4ada5acdcf129d3f10779d1208b803",
         intel: "cafc86a84bb387f8aaf93d388a50e46f5d6a0ec0a26aa4773a39e9d78de92e0f"

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
