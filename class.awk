BEGIN {
    FS = ","
    OFS = ","
}
NR > 1 {
    class_count[$3]++
}
END {
    print "Class,Passengers"
    for (c in class_count) {
        print c, class_count[c]
    }
}