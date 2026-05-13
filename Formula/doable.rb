class Doable < Formula
  desc "AI-native deployment CLI"
  homepage "https://doable.do"
  url "https://registry.npmjs.org/doable-cli/-/doable-cli-0.1.4.tgz"
  sha256 "50a7ab23b869f3695f4c7c0d31c2623bb2a492590038770ce2192e5cd24e97ec"
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
