require 'formula'
require 'install'

class Tgz2zip < Formula
  url 'https://github.com/nes1983/tgz2zip/zipball/master'
  homepage 'http://github.com/nes1983/tgz2zip/'
  #md5 '829a2db4700c4c5ae549b0133a1d0d48'
  version '0.1'
  depends_on 'ronn' => :ruby
  
  def install
      install_tgz2zip(prefix)
  end

  def test
    system("./test.sh")
  end
end
