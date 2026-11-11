#!/usr/bin/env bash
# Point every absolute link (link previews, canonical URL, sitemap, imprint links in the
# offline file, README) at a new address, e.g. after moving to your own domain.
#
#   tools/set-site-url.sh https://moneymoves.de/
#   tools/set-site-url.sh https://moneymoves.de/ --cname   # also write CNAME for GitHub Pages
#
# The address must start with https:// and end with a slash.
set -euo pipefail
cd "$(dirname "$0")/.."

new="${1:-}"
if [[ ! "$new" =~ ^https://[^[:space:]]+/$ ]]; then
  echo "usage: $0 https://your-domain.example/ [--cname]" >&2
  exit 1
fi

old=$(grep -o '<link rel="canonical" href="[^"]*"' index.html | sed 's/.*href="\([^"]*\)"/\1/')
if [[ -z "$old" ]]; then echo "could not find the current address in index.html" >&2; exit 1; fi
if [[ "$old" == "$new" ]]; then echo "already set to $new"; exit 0; fi

files=(index.html money-moves-offline.html sitemap.xml robots.txt README.md)
for f in "${files[@]}"; do
  [[ -f "$f" ]] || continue
  python3 - "$f" "$old" "$new" <<'PY'
import sys
path, old, new = sys.argv[1:]
s = open(path, encoding='utf-8').read()
n = s.count(old)
open(path, 'w', encoding='utf-8').write(s.replace(old, new))
print(f'{path}: {n} replaced')
PY
done

if [[ "${2:-}" == "--cname" ]]; then
  host=$(echo "$new" | sed -E 's#https://([^/]+)/.*#\1#')
  echo "$host" > CNAME
  echo "CNAME: $host  (also set the domain under Settings → Pages and add the DNS records GitHub shows)"
fi
echo "Done: $old → $new"
