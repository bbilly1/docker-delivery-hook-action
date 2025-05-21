#!/bin/sh

set -e

echo "Sending webhook..."

TIMESTAMP=$(date +%s)
MESSAGE="${INPUT_PAYLOAD}${TIMESTAMP}"
SIGNATURE=$(echo -n "$MESSAGE" | openssl dgst -sha256 -hmac "$INPUT_SECRET_KEY" | cut -d " " -f 2)

curl -X POST -H "Content-Type: application/json" \
  -H "X-Timestamp: $TIMESTAMP" \
  -H "X-Signature: $SIGNATURE" \
  -d "$INPUT_PAYLOAD" \
  "$INPUT_API_ENDPOINT"
