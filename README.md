# converge-2020-hpa-demo
This repository contains all the files used in the demo of HPA in Citrix Converge 2020.

## Instructions
1. Make sure you have a kubernetes cluster with Helm version 3 installed.
2. In each folder, there is a `values.sh` file where each variable needs to be updated appropriately.
3. Now, we can run the `create_all.sh` script to deploy relevant pods, services, ingresses, etc. (Make sure to check the `set_up.sh` script in case the helm install command fails.)
4. To clean up all the resources created by the `create_all.sh` script, just execute the `delete_all.sh` script.
