#!/bin/bash
set -e

ng build --prod --build-optimizer --sourcemaps
ng serve --host 0.0.0.0 --port 8080
if [ -z "$1" ]; then
  exec bash
else
  exec "$@"
fi
