#!/usr/bin/bash
trap 'exit' SIGINT SIGTERM ERR
CURR_CONTEXT=$(cat ~/.kube/config | yq '.current-context')
OPERATION=$(gum choose --header="Change:" "context" "namespace")
if [[ "$OPERATION" == "context" ]]; then
   CONTEXTS=$(cat ~/.kube/config | yq '.contexts[].name')
   SELECTION=$(gum filter --placeholder="Current context: $CURR_CONTEXT" $CONTEXTS)
   gum spin --spinner meter --title "Changing kubernetes context..." -- kubectl config use-context "$SELECTION"
else
   NAMESPACES=$(gum spin --spinner meter --title "Retrieving namespaces" -- kubectl get namespaces -o json | jq -r '.items[].metadata.name')
   SELECTION=$(gum choose --header="Select namespace:" $NAMESPACES)
   gum spin --spinner meter --title "Changing kubernetes context's namespace..." -- kubectl config set-context --current --namespace "$SELECTION"
fi
