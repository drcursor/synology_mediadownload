#!/bin/sh
if [ -f ~/.flexget/.config-lock ]; then
    rm ~/.flexget/.config-lock
fi

flexget daemon start -d --autoreload-config

# Change password below

flexget web passwd PASSWORD1!

/bin/bash
