#!/bin/sh

psql -h postgres -c "\d" pdns | grep "No relations found\." && psql -h postgres -f /setup.sql pdns

/usr/sbin/pdns_server
