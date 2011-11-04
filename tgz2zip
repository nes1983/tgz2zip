#!/usr/bin/env sh

# Fail if return code isn't 0. 
# Parameter 1 is the return code
# Para. 2 is text to display on failure.
check_errs()
{
  if [ "${1}" -ne "0" ]; then
    echo "ERROR # ${1} : ${2}"
    # as a bonus, make our script exit with the right error code.
    exit ${1}
  fi
}

infile="$1"
outfile="$2"
where_am_I=$PWD
# Add syntax checking here
tempdir="$(mktemp -d -t 2zip)"
echo $tempdir
#trap "rm -rf '$TMPDIR'" EXIT INT HUP TERM

case "$infile" in
    *.tar.gz | *.tgz)
        tar -C "$tempdir" -xzf "$infile" 2>/dev/null
		check_errs $?
        ;;
    *.tar)
        tar -C "$tempdir" -xf "$infile" 2>/dev/null
		check_errs $?

        ;;
    *.tar.bzip2)
        tar -C "$tempdir" -xjf "$infile" 2>/dev/null
		check_errs $?
        ;;
    *)
        echo "Unrecognized input format" >&2
        exit -1
        ;;
esac

(cd "$tempdir" && zip -r "${where_am_I}/$outfile" .)
check_errs $?
rm $infile
check_errs $?
