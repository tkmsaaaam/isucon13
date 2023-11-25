#!/bin/bash
# output alp
sudo cat /var/log/nginx/access.log | alp ltsv -m "/api/livestream/[0-9]+/livecomment/[0-9]+/report,/api/livestream/[0-9]+/report,/api/livestream/[0-9]+/livecomment,/api/livestream/[0-9]+/reaction,/api/livestream/[0-9]+/exit,/api/livestream/[0-9]+/ngwords,/api/livestream/[0-9]+/enter,/api/livestream/[0-9]+/moderate,/api/user/[a-zA-Z0-9]+/statistics,/api/user/[a-zA-Z0-9]+/icon,/api/user/[a-zA-Z0-9]+/theme,/api/livestream/[0-9]+"
# -m "/api/user/[0-9]+/delete,/api/user/[0-9]+"

# output mysql log
sudo mysqldumpslow /var/log/mysql/mysql-slow.log
sudo pt-query-digest /var/log/mysql/mysql-slow.log
