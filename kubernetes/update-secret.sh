#!/bin/sh

kubectl create secret generic service-account-creds \
    --from-file=secrets \
	--namespace agent-kit \
	--dry-run=client \
	-o yaml | kubectl apply -f -

