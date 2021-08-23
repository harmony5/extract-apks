#!/usr/bin/sh

if ! command -v adb devices &> /dev/null
then
	printf "error: adb (Android Debug Bridge) not found in path" >&2
	exit 1
fi

if [ $# -eq 0 ];
then
	filter_func() { grep .; }
else 
	filter=$(echo $@ | sed 's/ /|/g')
	filter_func() { grep -E "$filter"; }
fi

for pkg in $(adb -d shell pm list packages -3 | cut -d: -f2 | filter_func)
do
	pkg=$(echo "$pkg")

	echo "Extracting $pkg files"

	[ ! -d "./$pkg" ] && mkdir ./$pkg

	for path in $(adb -d shell pm path $pkg | cut -d: -f2)
	do
		path=$(echo $path)
		adb -d pull -a -z brotli "$path" ./$pkg/
	done
done
