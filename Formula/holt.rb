class Holt < Formula
  desc "Open-source personal agent OS: any LLM, private memory you can see"
  homepage "https://productsdecoded.com/holt"
  url "https://registry.npmjs.org/@holt-os/holt/-/holt-0.14.3.tgz"
  sha256 "e0e565600750aae0f1a5b8da47e30d9d587b5e77bef6def76676020dc1ea5763"
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
