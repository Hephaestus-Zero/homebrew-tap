class Hslice < Formula
  desc "Sub-2ms C11 mmap trigram code indexer & structural AST slicer for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hslice"
  url "https://github.com/Hephaestus-Zero/hslice/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eee3a85616d94ca5c8660c1d183e26349b89b0f67a9b1b85f95592f89cee69d8"
  license "MIT"
  head "https://github.com/Hephaestus-Zero/hslice.git", branch: "main"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/hslice --version")
    assert_match "0.2.0", shell_output("#{bin}/hfind --version")
  end
end
