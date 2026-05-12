class Doable < Formula
  desc "AI-native deployment CLI"
  homepage "https://doable.do"
  url "https://registry.npmjs.org/doable-cli/-/doable-cli-0.1.1.tgz"
  sha256 "82639434c287ae0cd76f0f996c0d31d98feafe512162427be127c8435cab48e0"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *Language::Node.local_npm_install_args
    bin.install_symlink libexec/"bin/doable"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/doable --version")
  end
end
