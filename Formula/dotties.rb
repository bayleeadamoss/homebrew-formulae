require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.1.1.tar.gz'
  sha256 'eeb58068009f30ce4b2746482605b970401316a77162507864f2e60e22ff392c'

  def install
    libexec.install Dir["*"] << '.version'
    bin.install_symlink libexec/"bin/dotties"
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
