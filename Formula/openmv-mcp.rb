class OpenmvMcp < Formula
  desc "MCP server for controlling OpenMV cameras"
  homepage "https://github.com/SingTown/openmv-mcp"
  version "2.5.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/SingTown/openmv-mcp/releases/download/v2.5.1/openmv_mcp_server-2.5.1-macos-arm64"
  sha256 "256dc22cdffdb5bee707873c99d1e1194bae0b078a52177807cf816ac84a0bba"

  def install
    bin.install Dir["*"].first => "openmv_mcp_server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openmv_mcp_server --version")
  end
end
