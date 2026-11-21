class Hslice < Formula
  desc "Sub-2ms C11 mmap trigram code indexer and AST slicer for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hslice"
  url "https://github.com/Hephaestus-Zero/hslice/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e6be6c69e941e3f9abfa3508c41db7ee2fb42628c759b3048b0cf8bb04bd0ea2"
  license "MIT"
  head "https://github.com/Hephaestus-Zero/hslice.git", branch: "main"

  conflicts_with "hephaestus", because: "both install hslice, hfind and hsearch"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/hslice --version")
    assert_match "0.2.0", shell_output("#{bin}/hfind --version")
  end
end
