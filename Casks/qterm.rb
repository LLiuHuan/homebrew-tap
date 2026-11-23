cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.13"

  sha256 arm:   "faa08ce9ba29d8471011fd135c5c1cf4a33220c9dbe6a8acd0f403f6510f3f4e",
         intel: "4d3f4d9592cec7276a6c055e57298921cd08d8920416f1bb858ecd61b44a151e"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.13/qterm-darwin-#{arch}.zip"

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
