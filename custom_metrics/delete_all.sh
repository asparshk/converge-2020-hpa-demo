kubectl delete -f .temp/monitoring.yaml
helm delete cpx-prom-adapter ;
kubectl delete -f .temp/guestbook-all-in-one.yaml
kubectl delete -f .temp/citrix-k8s-ingress-controller.yaml
kubectl delete -f .temp/ingress_vpx.yaml
kubectl delete -f .temp/ingress_cpx.yaml
kubectl delete -f .temp/citrix-k8s-cpx-ingress.yaml
kubectl delete -f .temp/hpa.yaml 
kubectl delete secret nslogin
rm -rf .temp
