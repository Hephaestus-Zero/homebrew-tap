class Hslice < Formula
  desc "Sub-2ms C11 mmap trigram code indexer & structural AST slicer for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hslice"
  url "https://github.com/Hephaestus-Zero/hslice/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f40ca9d8ae6e0c365dedc6bdf719dcf0f7042dcff7eb5597eab119bc547fd0c3"
  license "MIT"
  head "https://github.com/Hephaestus-Zero/hslice.git", branch: "main"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/hslice --version")
    assert_match "0.1.1", shell_output("#{bin}/hfind --version")
  end
end
