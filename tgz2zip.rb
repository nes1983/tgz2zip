require 'formula'

class Tgz2zip < Formula
  url 'https://github.com/nes1983/tgz2zip/zipball/master'
  homepage 'http://github.com/nes1983/tgz2zip/'
  #md5 '829a2db4700c4c5ae549b0133a1d0d48'
  version '0.1'
  def install
      to = prefix + "/usr/local/bin"
      FileUtils.mkdir_p(to)
      FileUtils.cp("tgz2zip",to)
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test tgz2zip`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
