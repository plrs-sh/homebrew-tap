class Polaris < Formula
  desc "Continue Polaris coding Sessions on this machine"
  homepage "https://plrs.sh"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.1/polaris_darwin_arm64.tar.gz"
      sha256 "27e66aed98580f7a4c582387825305511a6c0302f1ee2299c58abea1f79f271b"
    else
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.1/polaris_darwin_amd64.tar.gz"
      sha256 "921e304bf313a3945771b09236d2425930f0a47bdbded7057067bc85417ca0ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.1/polaris_linux_arm64.tar.gz"
      sha256 "52df416e48d0ab7771f3c0be9fe54d36080b5423aec4945403ad2c3ce4a631bf"
    else
      url "https://github.com/plrs-sh/polaris-cli/releases/download/v0.1.1/polaris_linux_amd64.tar.gz"
      sha256 "7b3c10a076cda8918b04c04c53c05e8a44e80bcf9cf698b98b5a664a91f29733"
    end
  end

  def install
    bin.install "polaris"
  end

  test do
    assert_match "polaris 0.1.1", shell_output("#{bin}/polaris version")
  end
end
