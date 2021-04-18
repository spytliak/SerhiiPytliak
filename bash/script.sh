#!/usr/bin/env bash
while true ; do echo -e "HTTP/1.1 200 OK\n\n'Hello DevOps GL BaseCamp'\n$(date)" | nc -l -p 8888; done