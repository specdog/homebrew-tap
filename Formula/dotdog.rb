class Dotdog < Formula
  desc "CLI tool for spec-driven development — write .dog specs, compile .dag graphs, serve to AI agents via MCP"
  homepage "https://specdog.github.io/dotdog"
  url "https://registry.npmjs.org/dotdog/-/dotdog-1.0.0.tgz"
  sha256 "ec66261ab2127225ebe0167ff88d661d566291eb577a6ae0931fab128093da97"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_equal "#{version}\n", shell_output("#{bin}/dotdog --version")
    assert_equal "#{version}\n", shell_output("#{bin}/spec --version")
  end
end
