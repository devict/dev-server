#!/bin/bash
if ! hash caddy 2>/dev/null; then
  curl https://getcaddy.com | bash -s personal
fi
