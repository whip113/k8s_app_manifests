DAP_ACCT="lab"
DAP_USER="admin"
DAP_PASS="Cyberark1"

K8S_FOLLOWER_NS="conjur"
CONJUR_VERSION="11.2.1"

CONJUR_APPLIANCE_FILE="conjur-appliance_$CONJUR_VERSION.tar.gz"
CONJUR_APPLIANCE_IMG="registry.tld/conjur-appliance:$CONJUR_VERSION"

ECR_BASE_URI="440956151592.dkr.ecr.us-east-1.amazonaws.com"

SEED_FETCHER_REPO="$ECR_BASE_URI/seed-fetcher:$K8S_FOLLOWER_NS"
CONJUR_APPLIANCE_REPO="$ECR_BASE_URI/conjur-appliance:$CONJUR_VERSION"

DAP_INTERNAL_IP="172.31.35.124"  # IP for SSH access to DAP master
DAP_SSH_KEY=~/.ssh/DAPDemo.pem 
DAP_HOSTNAME="ec2-100-24-56-192.compute-1.amazonaws.com" # Public Hostname of DAP master [cluster]
DAP_AUTHN_K8S_BRANCH="seed-service"

K8S_FOLLOWER_REPLICA_COUNT="2"
K8S_FOLLOWER_SVC_ACCT="conjur-svc"
K8S_FOLLOWER_APP_LABEL="conjur-follower"
K8S_FOLLOWER_LOGIN="host/conjur/authn-k8s/$DAP_AUTHN_K8S_BRANCH/$K8S_FOLLOWER_NS/service_account/$K8S_FOLLOWER_SVC_ACCT"

# If using EKS, eksctl can be used to build a Kubernetes cluster using the values below

EKS_CLUSTER_NAME="eks-cybrlab"
EKS_CLUSTER_VERSION="1.13"
EKS_CLUSTER_NODE_GROUP_NAME="$EKS_CLUSTER_NAME-standard-workers"
EKS_CLUSTER_NODE_TYPE="m4.xlarge"
EKS_NODES=3
EKS_NODES_MIN=1
EKS_NODES_MAX=4
EKS_NODE_AMI="auto"

AWS_REGION="us-east-1"
