require 'formula'

class Dotties < Formula
  homepage 'https://github.com/tinytacoteam/dotties-core'
  url 'https://github.com/tinytacoteam/dotties-core/archive/v0.1.0.tar.gz'
  sha256 '20cc14c5456e37e61089f951453906f6888b4d5fa89e95ae77b6e008bea29ad2'

  def install
    libexec.install Dir["*"]
  end

  test do
    system "#{bin}/dotties", "--version"
  end
end
