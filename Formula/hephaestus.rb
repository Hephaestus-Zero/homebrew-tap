class Hephaestus < Formula
  desc "Modular C11 and SQLite systems spine for AI coding agents"
  homepage "https://github.com/Hephaestus-Zero/hephaestus"
  url "https://github.com/Hephaestus-Zero/hephaestus/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "58f2e719b445d676f3ae1f4bcc7bcbcb1fc5f19b86ed1e4649110316312161d9"
  license "MIT"
  head "https://github.com/Hephaestus-Zero/hephaestus.git", branch: "main"

  depends_on "pkgconf" => :build
  depends_on "python@3.13"

  uses_from_macos "sqlite"

  # hslice and hfind are also shipped by the standalone hslice formula.
  conflicts_with "hslice", because: "both install hslice, hfind and hsearch"

  on_linux do
    # hshield is also shipped by the standalone hshield formula (Linux only).
    conflicts_with "hshield", because: "both install hshield"
  end

  def install
    # All five organs build cleanly on both macOS and Linux (hshield audit + hhook are POSIX C11;
    # Landlock sandboxing activates automatically on Linux).
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "hephaestus 0.1.0", shell_output("#{bin}/hephaestus --version")
    assert_path_exists bin/"hslice"
    assert_path_exists bin/"hmemory"
    assert_path_exists bin/"hshield"
    assert_path_exists bin/"hhook"
  end
end
