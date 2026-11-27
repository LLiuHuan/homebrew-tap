cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.16"

  sha256 arm:   "692e18462f1c4797cd71509b71efaef6d46172e959dd26934331876dc8217d12",
         intel: "a938dcbc4bc046ae3d6e7404fa606460ea96a807f4b71f91afb22fbd04f23213"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.16/qterm-darwin-#{arch}.zip"

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
