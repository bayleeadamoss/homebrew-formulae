require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.4.0.tar.gz'
  sha256 '4605968570aa77a240eb12bbcf5e9fd775021f3de1e365d7e8fb7563e649a519'

  def install
    libexec.install Dir["*"] << '.version'
    bin.install_symlink libexec/"bin/dotties"
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
