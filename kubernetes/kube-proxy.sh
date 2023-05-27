export KUBE_PORT="9080"
export HOST_PATTERN=".*"
export KUBE_ADDRESS="0.0.0.0"

kubectl proxy --address=${KUBE_ADDRESs} --port=${KUBE_PORT} --accept-hosts='.*' &
