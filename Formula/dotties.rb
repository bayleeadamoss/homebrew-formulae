require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.4.0.tar.gz'
  sha256 'e1a8f543d362a03d522564dbe7b9a428b1fab32c37c040274b512db3c1c0b72f'

  def install
    libexec.install Dir["*"] << '.version'
    bin.install_symlink libexec/"bin/dotties"
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
