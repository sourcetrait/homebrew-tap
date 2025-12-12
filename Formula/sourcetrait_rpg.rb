class SourcetraitRpg < Formula
  desc "PostgreSQL bindings for Rust"
  homepage "https://sourcetrait.com"
  url "https://github.com/sourcetrait/homebrew-tap/releases/download/sourcetrait_rpg%2F0.0.1/sourcetrait_rpg_pg18.tar.gz"
  sha256 "5aa9950f0ffc30fc5959ff6df19c5b10b66fdbc356eb0cea6ff838ae7a703d11" # shasum -a 256 on the tarball
  license "AGPL-3"

  def install
    bin.install "sourcetrait_rpg"
  end
end
