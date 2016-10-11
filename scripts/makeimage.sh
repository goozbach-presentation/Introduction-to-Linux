#!/bin/bash
dd if=/dev/zero of=/sources/${1} bs=1M count=1 seek=3072
