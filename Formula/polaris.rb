class Polaris < Formula
  desc "Continue Polaris coding Sessions on this machine"
  homepage "https://plrs.sh"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.0/polaris_darwin_arm64.tar.gz"
      sha256 "9b61065559816ed111380efe9c057f73bdd315df6f890d37d43d4b488aa248fc"
    else
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.0/polaris_darwin_amd64.tar.gz"
      sha256 "eadf663b034bc0df46aaec1f299d2cc6e63e22970a6ce6f2844b03fe82336da2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.0/polaris_linux_arm64.tar.gz"
      sha256 "236a80e9fa9c05a92a14fa44a8ee5012b20811b34290b24516d9ba62b459a525"
    else
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.0/polaris_linux_amd64.tar.gz"
      sha256 "63162c75f7cb18c5a64420786e16a2413dad3b6607036348cb00919308a77826"
    end
  end

  def install
    bin.install "polaris"
  end

  test do
    assert_match "polaris 0.1.0", shell_output("#{bin}/polaris version")
  end
end
