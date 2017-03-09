#!/command/mawk

BEGIN {
    print "#!/command/mawk" "\n\n" "BEGIN { OFS = \"=\" }"
}

$1 ~ /^--with-/ { next }
$1 !~ /dir$/ { next }
{ OPTION = $0 }
{ gsub("-","",OPTION) }
{ print "$1 == \"" $0 "\" { print $0," toupper(OPTION) " }" }
