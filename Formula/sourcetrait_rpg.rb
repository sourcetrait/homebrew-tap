class SourceTraitRpg < Formula
  desc "PostgreSQL bindings for Rust"
  homepage "https://sourcetrait.com"
  url "https://github.com/sourcetrait/homebrew-tap/releases/download/sourcetrait_rpg%2F0.0.1/sourcetrait_rpg_pg18.tar.gz"
  sha256 "8d7317bb22b84898fd0cc4e2c6842d10e710bf34573dde3bd45a48636b1d57db"
  license "AGPL-3"

  def install
    bin.install "sourcetrait_rpg"
  end
end
