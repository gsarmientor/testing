#!/bin/bash

helpinfo()
{
    echo 'Example: ./ctm_run_installer -i {filename}'
}

while [ ! $# -eq 0 ]
do
	case "$1" in
		--help | -h)
			helpinfo
			exit
			;;
		--installer | -i)
                        curl -O https://s3.amazonaws.com/versionone-builds/continuum/installer/$2
                        chmod +x $2
                        ./$2 -s
			exit
			;;
	esac
	shift
done

