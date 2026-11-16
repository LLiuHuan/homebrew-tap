cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.7"

  sha256 arm:   "39737f339490e968ad53d61c7681562af5079382758ccde63e64feb598f3f888",
         intel: "6560e1dcc844b7ed0f88857995714196456f717f66c8585d85633e1961fd3285"

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
