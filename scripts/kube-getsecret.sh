#!/usr/bin/bash
trap 'exit' SIGINT SIGTERM ERR

NAMESPACE=$1
if [[ -z "$NAMESPACE" ]]; then
   echo "Please specify a namespace" >&2
   exit 1
fi
SECRETS=$(gum spin --spinner meter --title "Listing secrets..." -- kubectl get secret -o json -n "$NAMESPACE" | jq -r '.items[].metadata.name')
SELECTION=$(gum filter --placeholder="Select secret:" $SECRETS)
CONTENTS=$(gum spin --spinner meter --title "Retrieving secret contents..." -- kubectl get secret -o json -n "$NAMESPACE" "$SELECTION" | jq '.data | with_entries(.value |= @base64d)')
if gum confirm --negative="No (Copy to clipboard instead)" "Show contents?"; then
   echo "$CONTENTS" | less
else
   echo "$CONTENTS" | xclip -r -sel clip # Copy to clipboard
fi
