#!/bin/sh

unpkg | while read -r package
do
    unpkg ${package} X _extract_options_from_configure_help
done | sort -u | awk -f tool/.configure.awk
