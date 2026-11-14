class Hshield < Formula
  desc "Zero-overhead Linux Landlock LSM sandbox & AST supply-chain auditor for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hshield"
  url "https://github.com/Hephaestus-Zero/hshield/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "d975a10176151a1a75828f3a635bb17dbc0475e62baa7be60118bd6f491aa685"
  license "MIT"
  head "https://github.com/Hephaestus-Zero/hshield.git", branch: "main"

  depends_on :linux
  depends_on "openssl@3"
  depends_on "zlib"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/hshield --version")
  end
end
