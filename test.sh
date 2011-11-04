rm test.zip 2> /dev/null
tar -cjf test.tar.bzip2 test
sh tgz2zip.sh test.tar.bzip2 test.zip
rm test.tar.bzip2 2> /dev/null
