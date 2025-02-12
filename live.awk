#!/usr/bin/awk -f
BEGIN {
    FS = ","
}
NR > 1 {
    if ($2 == "1") {
        survival_count[$3]++
    }
}
END {
    for (c in survival_count) {
        printf " Class %s, Survival: %d\n", c, survival_count[c]
    }
}
