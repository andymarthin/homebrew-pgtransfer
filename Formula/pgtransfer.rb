class Pgtransfer < Formula
  desc "Transfer PostgreSQL data between databases or CSV files"
  homepage "https://github.com/andymarthin/pgtransfer"
  license "MIT"

  # The version is parsed from the release URL, so it is not declared here.
  # The `Update formula` workflow only needs to rewrite the sha256 values.
  on_macos do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.4.0/pgtransfer-v1.4.0-darwin-arm64.tar.gz"
      sha256 "2373ff52764f2a988751d8cad2e6706328739ff2bfa098fc543a90b72fdfc847"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.4.0/pgtransfer-v1.4.0-darwin-amd64.tar.gz"
      sha256 "2facea6a3cace9c36e033e366f3d93470fd8ea66a1b624d0c457a16d9129ae10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.4.0/pgtransfer-v1.4.0-linux-arm64.tar.gz"
      sha256 "624b71c6e62187174acebb24813399c02e6a49b437ea3640d590776cd4600ab8"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.4.0/pgtransfer-v1.4.0-linux-amd64.tar.gz"
      sha256 "939081f7fa22f03792fecf5b3733433e30d4575338068e488a5688b727bbe662"
    end
  end

  def install
    bin.install "pgtransfer"
  end

  test do
    assert_match "pgtransfer", shell_output("#{bin}/pgtransfer version")
  end
end
