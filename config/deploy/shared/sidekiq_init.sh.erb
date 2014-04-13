#!/bin/sh
set -e

APP_ROOT=<%= current_path %>
PID=$APP_ROOT/tmp/pids/sidekiq.pid
CMD="cd $APP_ROOT; RAILS_ENV=<%= "#{fetch(:rails_env)}" %> nohup bundle exec sidekiq -e <%= "#{fetch(:rails_env)}" %> -C <%= current_path %>/config/sidekiq.yml -i 0 -P $PID >> <%= current_path %>/log/sidekiq.log 2>&1 &"
AS_USER="deploy"

run () {
  if [ "$(id -un)" = "$AS_USER" ]; then
    eval $1
  else
    su -c "$1" - $AS_USER
  fi
}

sig () {
  test -s "$PID" && kill -$1 `cat $PID`
}

case "$1" in
  start)
    sig 0 && echo >&2 "Already Running" && exit 0
    run "$CMD"
    ;;
  stop)
    if kill -0 `cat $PID`
    then
        cd $APP_ROOT
        bundle exec sidekiqctl stop $APP_ROOT/tmp/pids/sidekiq.pid 10
        echo "stopping...."
    else
        echo "not running"
    fi
    ;;
  *)
    echo >&2 "Usage: $0 <start|stop>"
    exit 1
    ;;
esac
