#!/bin/bash
echo "PATH=/bin:/usr/bin:/usr/local/bin" >> /var/spool/cron/crontabs/root
echo "@CRON_SETUP@ sh /opt/pentaho/crontab.sh" >> /var/spool/cron/crontabs/root
crond -L /var/log/cron.log
