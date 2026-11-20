cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"

  sha256 arm:   "2a7966935c2c0eb6032eafd2dabf22caad85eec799f3ac341b83082f617a5973",
         intel: "a4aef5273072ac8c6b5cbb4eee6cd4519ffdb750ca513110175b54d2aae954be"

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
