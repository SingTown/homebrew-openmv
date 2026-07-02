class OpenmvMcp < Formula
  desc "MCP server for controlling OpenMV cameras"
  homepage "https://github.com/SingTown/openmv-mcp"
  version "2.5.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/SingTown/openmv-mcp/releases/download/v2.5.0/openmv_mcp_server-2.5.0-macos-arm64"
  sha256 "5252d1806b51f90348fcf606b83895a39775ec64b97cdf47806fa243b9da14d3"

  def install
    bin.install Dir["*"].first => "openmv_mcp_server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openmv_mcp_server --version")
  end
end
