class OpenmvMcp < Formula
  desc "MCP server for controlling OpenMV cameras"
  homepage "https://github.com/SingTown/openmv-mcp"
  version "2.3.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/SingTown/openmv-mcp/releases/download/v2.3.1/openmv_mcp_server-2.3.1-macos-arm64"
  sha256 "5d9477273da63774dc42dcfe88f37a931e6c7e21e310b9ef197f81366e018f9f"

  def install
    bin.install Dir["*"].first => "openmv_mcp_server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openmv_mcp_server --version")
  end
end
