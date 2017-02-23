
BEGIN { print "BEGIN { OFS = \"=\" }" }

# ./configure --help | awk '$1 ~ /^--/ { print $1 }' | awk -F = '{ print $1 }' | tr -d '['

$1 !~ /dir$/ { next }
{ OPTION = $0 }
{ gsub("-","",OPTION) }
{ print "$1 == \"" $0 "\" { print $0," toupper(OPTION) " }" }
