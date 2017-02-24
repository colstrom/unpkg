BEGIN { OFS = "=" }

$1 == "SV3BIN"  { $2 = BINDIR }
$1 == "MANDIR"  { $2 = MANDIR }
$1 == "UCBINST" { $2 = INSTALL }
$1 == "CFLAGS"  { $2 = CFLAGS }
$1 == "STRIP"   { $2 = STRIP }
{ print }
