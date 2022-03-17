class Autocorrect < Formula
  desc "A linter and formatter for help you improve copywriting, to correct spaces, punctuations between CJK (Chinese, Japanese, Korean)."
  homepage "https://github.com/huacnlee/autocorrect"
  url "https://github.com/huacnlee/autocorrect/archive/refs/tags/v1.5.6.tar.gz"
  sha256 "e17d35343e4631089f0edd0b7d8ca90d7f3681e008ed8e7b036433a63539a311"
  license "MIT"
  revision 1
  head "https://github.com/huacnlee/autocorrect.git", branch: "master"

  depends_on "rustup-init" => :build

  def install
    system "#{Formula["rustup-init"].bin}/rustup-init", "-qy", "--no-modify-path"
    ENV.prepend_path "PATH", HOMEBREW_CACHE/"cargo_cache/bin"
    nightly_version = "nightly-2022-03-17"
    components = %w[rust-src rustc-dev llvm-tools-preview]
    system "rustup", "toolchain", "install", nightly_version
    system "rustup", "component", "add", *components, "--toolchain", nightly_version
    system "cargo", "build", "--all-features", "--release", "--out-dir=bin/", "-Z", "unstable-options"
    prefix.install "bin"
  end

  test do
  end
end
