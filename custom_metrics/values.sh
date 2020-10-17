VPX_IP="x.x.x.x"
VPX_VIP="x.x.x.x"
VPX_USERNAME=""
echo -n "Enter VPX Password: "
read -s VPX_PASSWORD
CPX_IMAGE="quay.io/citrix/citrix-k8s-cpx-ingress:13.0-64.35"
CIC_IMAGE="quay.io/citrix/citrix-k8s-ingress-controller:1.9.20"
EXPORTER="quay.io/citrix/citrix-adc-metrics-exporter:1.4.6"
