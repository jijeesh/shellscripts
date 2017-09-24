#!/usr/bin/env bash
grep "^${USER}:" /etc/passwd #| cut -d: -f4
grep "^${USER}:" /etc/passwd | cut -d: -f6