require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.4.1.tar.gz'
  sha256 '82db09e106c91911f6e4192742096b030284374dad409b5efb997983ea3c4f5d'

  def install
    libexec.install Dir["*"] << '.version'
    bin.install_symlink libexec/"bin/dotties"
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
