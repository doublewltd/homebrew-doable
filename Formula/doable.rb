class Doable < Formula
  desc "AI-native deployment CLI"
  homepage "https://doable.do"
  url "https://registry.npmjs.org/doable-cli/-/doable-cli-0.1.3.tgz"
  sha256 "1691e4250b36acf7a623dd86eec73c82482d1feea32f82673f54e317928acb98"
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
