class Pgtransfer < Formula
  desc "Transfer PostgreSQL data between databases or CSV files"
  homepage "https://github.com/andymarthin/pgtransfer"
  license "MIT"

  # The version is parsed from the release URL, so it is not declared here.
  # The `Update formula` workflow only needs to rewrite the sha256 values.
  on_macos do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.3.0/pgtransfer-v1.3.0-darwin-arm64.tar.gz"
      sha256 "a378f69b05c15b6b407176097efbce66d4ae90fc6a009fbead6ea6e47d196ee7"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.3.0/pgtransfer-v1.3.0-darwin-amd64.tar.gz"
      sha256 "12a7eef00955a1d4147398ffe2ccee949c1a1138d49d110be17221c4ac4f007f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.3.0/pgtransfer-v1.3.0-linux-arm64.tar.gz"
      sha256 "b12e0018ae97f765ed7111dbaaf1ffe71acb56e6a7f07be68d164a54aa2dae8f"
    end

    on_intel do
      url "https://github.com/andymarthin/pgtransfer/releases/download/v1.3.0/pgtransfer-v1.3.0-linux-amd64.tar.gz"
      sha256 "edd237adeb5638a21383ce4c6eab930ba4f169b0c6e7d357b9e0a99c62c0459b"
    end
  end

  def install
    bin.install "pgtransfer"
  end

  test do
    assert_match "pgtransfer", shell_output("#{bin}/pgtransfer version")
  end
end
