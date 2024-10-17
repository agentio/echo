#!/bin/sh

kubectl create secret generic service-account-creds \
    --from-file=secrets \
	--namespace endpoints-examples \
	--dry-run=client \
	-o yaml | kubectl apply -f -

