mkdir .temp
cp *.yaml .temp/
source values.sh
echo -e "\n"
sed -i "s,\`CIC_IMAGE\`,$CIC_IMAGE,g" .temp/*.yaml
sed -i "s/\`VPX_IP\`/$VPX_IP/g" .temp/*.yaml
sed -i "s,\`CPX_IMAGE\`,$CPX_IMAGE,g" .temp/*.yaml
sed -i "s/\`VPX_VIP\`/$VPX_VIP/g" .temp/*.yaml
sed -i "s,\`EXPORTER\`,$EXPORTER,g" .temp/*.yaml
sed -i "s,\`VPX_PASSWORD\`,$VPX_PASSWORD,g" .temp/*.yaml
kubectl create secret  generic nslogin --from-literal=username=$VPX_USERNAME --from-literal=password=$VPX_PASSWORD
kubectl create -f .temp/monitoring.yaml
helm install cpx-prom-adapter prometheus-community/prometheus-adapter -f prom_values.yaml
kubectl create -f .temp/guestbook-all-in-one.yaml
kubectl create -f .temp/citrix-k8s-ingress-controller.yaml
kubectl create -f .temp/ingress_vpx.yaml
kubectl create -f .temp/ingress_cpx.yaml
kubectl create -f .temp/citrix-k8s-cpx-ingress.yaml
kubectl create -f .temp/hpa.yaml 
