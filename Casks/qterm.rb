cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.11"

  sha256 arm:   "645d96406b0d18eb37e2fdddaa5fd4635c889e18a703d038fddbeb4b10fce259",
         intel: "d8205da9e92464cc10b1028403b4fed24ebe5608c8199c400375330da90ea553"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.11/qterm-darwin-#{arch}.zip"

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
