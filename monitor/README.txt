# 1 download yaml config

for i in alertmanager-configmap.yaml alertmanager-deployment.yaml alertmanager-pvc.yaml alertmanager-service.yaml kube-state-metrics-deployment.yaml kube-state-metrics-rbac.yaml kube-state-metrics-service.yaml node-exporter-ds.yml node-exporter-service.yaml prometheus-configmap.yaml prometheus-rbac.yaml prometheus-service.yaml prometheus-statefulset.yaml ;do wget https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/prometheus/$i;done


# 2 create namespace prom

# 3

# 4

# 5
