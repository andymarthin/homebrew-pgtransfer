class Pgtransfer < Formula
  desc "Transfer PostgreSQL data between databases or CSV files"
  homepage "https://github.com/andymarthin/pgtransfer"
  license "MIT"

  # The version is parsed from the release URL, so it is not declared here.
  # The `Update formula` workflow only needs to rewrite the sha256 values.
  on_macos do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.2.0/pgtransfer-v1.2.0-darwin-arm64.tar.gz"
      sha256 "700fac182fa17ba8e6d38f84ae6f62ac9e2698dc849b9d2e983342e933a3602b"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.2.0/pgtransfer-v1.2.0-darwin-amd64.tar.gz"
      sha256 "bf3d16b36e574957de84a78b4575cdbbe93cfffef6addfff09f8621c1494e304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.2.0/pgtransfer-v1.2.0-linux-arm64.tar.gz"
      sha256 "f6d4a93a7e4a35c48050412f2b4a600cc7d5b57fa660bebc5c43c73bebc4a634"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.2.0/pgtransfer-v1.2.0-linux-amd64.tar.gz"
      sha256 "6f5b004f51effe6f7984a316ee12ffa33477ea248657159e56bb081ec770758c"
    end
  end

  def install
    bin.install "pgtransfer"
  end

  test do
    assert_match "pgtransfer", shell_output("#{bin}/pgtransfer version")
  end
end
