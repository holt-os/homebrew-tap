class Holt < Formula
  desc "Open-source personal agent OS: any LLM, private memory you can see"
  homepage "https://productsdecoded.com/holt"
  url "https://registry.npmjs.org/@holt-os/holt/-/holt-0.19.3.tgz"
  sha256 "775434f5a0e1871bb33f587311d6f69eba21c0d53668e272b7208daed08e0e46"
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
