#!/usr/bin/awk -f
BEGIN {
    FS = ","
    total_age = 0
    count = 0
}
NR > 1 {
    if ($7 != "") {
        total_age += $7
        count++
    }
}
END {
    if (count > 0)
        print "Average Age:", total_age / count
    else
        print "No age data found."
}
