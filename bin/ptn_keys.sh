#!/usr/bin/env bash
set -euo pipefail
ENVF="$HOME/PTN_VEIL/.ptn/nft.env"
[ -f "$ENVF" ] || { echo "missing $ENVF"; exit 1; }
set -a; . "$ENVF"; set +a
mask(){ awk '{ if(length($0)>8){print substr($0,1,4)"****"substr($0,length($0)-3)} else print "****"}'; }
echo "OPENSEA_API_KEY=$(printf %s "${OPENSEA_API_KEY:-}" | mask)"
