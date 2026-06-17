class Dotdog < Formula
  desc "CLI tool for spec-driven development — write .dog specs, compile .dag graphs, serve to AI agents via MCP"
  homepage "https://specdog.github.io/dotdog"
  url "https://registry.npmjs.org/dotdog/-/dotdog-0.8.0.tgz"
  sha256 "107b176e3624c7f0cd1830bacee669c8a00dc9799782b8088ab2f3e35e1fe4c6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/dotdog", "--version"
  end
end
