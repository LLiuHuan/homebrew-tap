cask "qterm" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.6"

  sha256 arm:   "bbb4edcdeb44c96729cf053ee3a236b65ffea809ed05259a8c47178ef54136bc",
         intel: "9ecf4a14f7e3d2a64f117abfdbdcd2932c83dcaada99037f3fdc7626e4e0da81"

  url "https://github.com/LLiuHuan/Qterm/releases/download/v0.0.6/qterm-darwin-#{arch}.zip"

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
