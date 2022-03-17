class Autocorrect < Formula
  desc "A linter and formatter for help you improve copywriting, to correct spaces, punctuations between CJK (Chinese, Japanese, Korean)."
  homepage "https://github.com/huacnlee/autocorrect"
  url "https://github.com/huacnlee/autocorrect/archive/refs/tags/v1.5.6.tar.gz"
  sha256 "e17d35343e4631089f0edd0b7d8ca90d7f3681e008ed8e7b036433a63539a311"
  license "MIT"
  revision 1
  head "https://github.com/huacnlee/autocorrect.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.mkpath
    system "mkdir", "bin"
    system "cp", "target/release/autocorrect", "bin/"
    prefix.install "bin"
  end

  test do
  end
end
