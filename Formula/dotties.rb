require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.3.1.tar.gz'
  sha256 'db73338c5c91e68be864193e10c22a0e277380d8c5b60c77f3a985d2459bc695'

  def install
    libexec.install Dir["*"] << '.version'
    bin.install_symlink libexec/"bin/dotties"
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
