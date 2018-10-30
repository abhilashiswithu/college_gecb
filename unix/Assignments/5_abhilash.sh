#!/system/bin/sh

ls - l| grep "^-rwx"| rev | cut -d' ' -f1 | rev