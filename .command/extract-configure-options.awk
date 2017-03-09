$1 ~ /^--/ {
    gsub("[[]", " ")
    split($1,OPTION,"=")
    print OPTION[1]
}
