#!/bin/bash
export PORT USERNAME PASSWORD

htpasswd -cb /etc/squid/passwd "${USERNAME}" "${PASSWORD}"
envsubst '${PORT}' < /etc/squid/squid.conf.template > /etc/squid/squid.conf

exec $(which squid) -NYCd 1