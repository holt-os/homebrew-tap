class Holt < Formula
  desc "Open-source personal agent OS: any LLM, private memory you can see"
  homepage "https://productsdecoded.com/holt"
  url "https://registry.npmjs.org/@holt-os/holt/-/holt-0.8.4.tgz"
  sha256 "50a242d63403a4d595d7b1fe0b9ae1547677fd1ddf139b7513424f3e81aa462f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "holt", shell_output("#{bin}/holt version")
  end
end
