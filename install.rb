#!/usr/bin/env ruby -wKU

require 'fileutils'

def install_tgz2zip(prefix)
    to = prefix + "/usr/local/bin"
    FileUtils.mkdir_p(to)
    FileUtils.cp("tgz2zip",to)
    `ronn --roff tgz2zip.1.ronn`
    to = prefix + "/usr/local/share/man/man1"
    FileUtils.mkdir_p(to)
    FileUtils.cp("tgz2zip.1",to)
end

if __FILE__ == $0 

root = ARGV[0] or "/"
install_tgz2zip(root)

end