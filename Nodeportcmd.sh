kubectl patch service {{ wp_pod_name }} --type='json' --patch='[{"op": "replace", "path": "/spec/ports/0/nodePort", "value": {{ nodePort }} }]'
