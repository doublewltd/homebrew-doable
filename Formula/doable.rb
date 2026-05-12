class Doable < Formula
  desc "AI-native deployment CLI"
  homepage "https://doable.do"
  url "https://registry.npmjs.org/doable-cli/-/doable-cli-0.1.2.tgz"
  sha256 "5feef900482af1e7acff85e4880ad05d95b5bd7f1e5713849f4aaf6ceef75211"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.local_npm_install_args
    bin.install_symlink libexec/"bin/doable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doable --version")
  end
end
