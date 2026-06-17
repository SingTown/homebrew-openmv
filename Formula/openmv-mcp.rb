class OpenmvMcp < Formula
  desc "MCP server for controlling OpenMV cameras"
  homepage "https://github.com/SingTown/openmv-mcp"
  version "2.4.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/SingTown/openmv-mcp/releases/download/v2.4.0/openmv_mcp_server-2.4.0-macos-arm64"
  sha256 "c2fb1d738dfc99f78d1ab861f9f2e76bcc30c5206526229f941075c44657b2f4"

  def install
    bin.install Dir["*"].first => "openmv_mcp_server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openmv_mcp_server --version")
  end
end
