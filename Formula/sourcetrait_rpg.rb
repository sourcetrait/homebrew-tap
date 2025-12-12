class SourcetraitRpg < Formula
  desc "PostgreSQL bindings for Rust"
  homepage "https://sourcetrait.com"
  url "https://github.com/sourcetrait/homebrew-tap/releases/download/sourcetrait_rpg_v0.0.1/sourcetrait_rpg_0.0.1.tar.gz"
  sha256 "4036fa68bb2372ad2580790d9720514db4bd75fe14e337cc189970dca7c8361d"
  license "AGPL-3"

  depends_on "postgresql@18"

  def install
    prefix.install Dir["*"]
  end

  def post_install
    pg = Formula["postgresql@18"]
    
    (pg.lib/"postgresql").install_symlink prefix/"sourcetrait_rpg.dylib"
    
    (pg.share/"postgresql/extension").install_symlink prefix/"sourcetrait_rpg.control"
    (pg.share/"postgresql/extension").install_symlink Dir[prefix/"sourcetrait_rpg--*.sql"]
  end
end
