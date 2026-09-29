class Holt < Formula
  desc "Open-source personal agent OS: any LLM, private memory you can see"
  homepage "https://productsdecoded.com/holt"
  url "https://registry.npmjs.org/@holt-os/holt/-/holt-0.18.1.tgz"
  sha256 "e996329ad0437bf3a1df282f92a2f27bc4a18cacecf93fce605b1ca96ab1d9c5"
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
