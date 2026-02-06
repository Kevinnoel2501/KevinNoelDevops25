# simulateerror.md

Changed the Service `targetPort` to **9090** while the application container was listening on **8080** to simulate a connectivity issue.

Used a temporary debug pod to send requests to the Service. Requests failed with **connection refused**, confirming a Service-to-Pod port mismatch.

Reverted the Service `targetPort` back to **8080`. Requests successfully reached the pod and returned **404**, confirming the issue was no longer network-related but application-level.

Checked the logs through **KQL**