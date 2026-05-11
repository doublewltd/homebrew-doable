class Doable < Formula
  desc "AI-native deployment CLI"
  homepage "https://doable.do"
  url "https://registry.npmjs.org/doable-cli/-/doable-cli-0.1.0.tgz"
  sha256 "e4ace999f66405d3e58b9434395cdb086c600f14b8e27ba2c58d4872091dad82"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *Language::Node.local_npm_install_args
    bin.install_symlink libexec/"bin/doable"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/doable --version")
  end
end
