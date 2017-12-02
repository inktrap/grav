#!/usr/bin/env bash

rm -rf [0-9]*
for day in $(seq 1 30); do
    for month in $(seq 1 1); do
        line=""
        while [[ -d $line || $line == "" ]]; do
            line=$(printf "%05d_%02d-%02d" "${RANDOM}" "${month}" "${day}")
        done
        mkdir "$line"
        printf '
---
title: "Date 2017-%02d-%02d"
tag: [example]
category: blog
start: 2017-%02d-%02dT18:00:00+0100

---

``start: 2017-%02d-%02dT18:00:00+0100``

===

Content.
' "$month" "$day" "$LINE" "$month" "$day" "$month" "$day" > "$line/item.md"
    done
done

