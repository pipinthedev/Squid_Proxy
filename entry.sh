#!/bin/bash
htpasswd -cb /etc/squid/passwd "${USERNAME}" "${PASSWORD}"
envsubst < /etc/squid/squid.conf.template > /etc/squid/squid.conf
exec $(which squid) -NYCd 1