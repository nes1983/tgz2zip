require 'formula'

class Tgz2zip < Formula
    url 'https://github.com/nes1983/tgz2zip/zipball/master'
    homepage 'http://github.com/nes1983/tgz2zip/'
    #md5 'bd89fbcd86eb64c343d00d05bf76ac12'
    version '0.1'
    depends_on 'ronn' => :ruby

    def install
            require "install.rb"
            install_tgz2zip(prefix)
    end

    def test
            `cd /tmp`
            puts `rm test.zip 2> /dev/null
            trap "rm -rf 'test.zip'" EXIT INT HUP TERM
            rm -rf test 2> /dev/null
            trap "rm -rf 'test'" EXIT INT HUP TERM
            rm test.tar.bzip2 2> /dev/null
            trap "rm -rf 'test.tar.bzip2'" EXIT INT HUP TERM


            mkdir test
            cd test
            touch hi
            touch hi2
            cd ..

            tar -cjf test.tar.bzip2 test

            tgz2zip test.tar.bzip2

            out=\`unzip -l test.zip\`
            if [ "8" == \`echo "$out" | wc -l\` ] ; then
                    echo "TEST PASSED"
                    exit 0
            else
                    echo "TEST FAILED"
                    echo "$out"
                    exit -1
            fi`
    end
end
