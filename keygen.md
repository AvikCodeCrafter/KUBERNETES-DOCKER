Generate PKI private key and CSR. It is important to set CN and O attribute of the CSR. CN is the name of the user and O is the group that this user will belong to. You can refer to RBAC for standard groups. Command to generate 

openssl genrsa -out momo.key 2048
openssl req -new -key momo.key -out momo.csr -subj "/CN=momo"

/> Give the momo.csr certificate to the admin of the k8s cluster />

cat momo.csr | base64 -w 0 # to encode in base64 and get the output in single line 

kubectl certificate approve momo --> To approve the certificate 

kubectl get csr momo -o yaml and get the certificate and decode with base64 again and share it with the user or add with the kubeconfig file 

To decode > echo "decodedkey" | base64 --decode > momo.crt

There is a kubectl subcommand to check subject attributes, such as username, for your selected Kubernetes client context: kubectl auth whoami.
