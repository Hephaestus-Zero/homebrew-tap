class Hshield < Formula
  desc "Zero-overhead Linux Landlock LSM sandbox & AST supply-chain auditor for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hshield"
  url "https://github.com/Hephaestus-Zero/hshield/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e48a34d3302326ef615c5047ce11ee4b7791a8410aa807dd8c95d6adc6c05af9"
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
