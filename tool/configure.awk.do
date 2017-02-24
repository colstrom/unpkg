#!/bin/sh

unpkg | while read -r package
do
    unpkg ${package} X _configure_help | mawk -f tool/extract-configure-options.awk
done | sort -u | mawk -f tool/.configure.awk
