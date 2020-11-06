#!/bin/sh

N_DAY=7
DATA_DIR=/usr/local/kebi/sk_mail_log_batch/data

if [ -d "$DATA_DIR" ]; then
        find $DATA_DIR -name '*.dat' -type f -mtime \+$N_DAY -exec rm -f {} \;
        echo $(date) ',sk_mail_log_batch dat file delete success.'
fi
