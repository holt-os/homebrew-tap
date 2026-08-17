class Holt < Formula
  desc "Open-source personal agent OS: any LLM, private memory you can see"
  homepage "https://productsdecoded.com/holt"
  url "https://registry.npmjs.org/@holt-os/holt/-/holt-0.15.0.tgz"
  sha256 "02f5f126f844e1b64d780f340421838dbec6df21fdee87264ffa12ee04525133"
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
