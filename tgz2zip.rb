require 'formula'

class Tgz2zip < Formula
  url 'https://github.com/nes1983/tgz2zip/zipball/master'
  homepage 'http://github.com/nes1983/tgz2zip/'
  #md5 '829a2db4700c4c5ae549b0133a1d0d48'
  version '0.1'
  depends_on 'ronn' => :ruby
  def install
      to = prefix + "/usr/local/bin"
      FileUtils.mkdir_p(to)
      FileUtils.cp("tgz2zip",to)
      `ronn --roff tgz2zip.1.ronn`
      to = prefix + "/usr/local/share/man/man1"
      FileUtils.cp("tgz2zip.1",to)
  end

  def test
    system("./test.sh")
  end
end
