#! /bin/bash
set -euo pipefail
for d in $(cat /data/domains.conf); do 
  ./certigo connect ${d} -j \
     | jq '.certificates[]| select(.dns_names != null)| {"domain": "'${d}'", "dns_names": [.dns_names], "not_before": .not_before, "not_after": .not_after}'
done