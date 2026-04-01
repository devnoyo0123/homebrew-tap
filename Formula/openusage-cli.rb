class OpenusageCli < Formula
  desc "CLI wrapper for OpenUsage HTTP API - check AI subscription usage from terminal"
  homepage "https://github.com/devnoyo0123/openusage-cli"
  url "https://github.com/devnoyo0123/openusage-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d866225db35efc7f451ce43ac24eb432817f9fa09068533b63e46651d75e7eee"
  license "MIT"

  depends_on "node"

  def install
    bin.install "cli.js" => "openusage"
  end

  def caveats
    <<~EOS
      The OpenUsage desktop app must be running for the CLI to work.
      Download it from: https://github.com/robinebers/openusage/releases/latest
    EOS
  end

  test do
    assert_match "OpenUsage CLI", shell_output("#{bin}/openusage help")
  end
end
