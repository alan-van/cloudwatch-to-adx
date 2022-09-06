# Validate
aws cloudformation validate-template --template-body file://cfn-templates/lqvan-vpc-2az.yml

# Provision VPC and related resources
aws cloudformation create-stack \
--stack-name lqvan-workload-vpc \
--template-body file://cfn-templates/lqvan-vpc-2az.yml \
--parameters ParameterKey=VpcCIDR,ParameterValue=10.198.0.0/16 ParameterKey=PrivateSubnet1CIDR,ParameterValue=10.198.20.0/24 ParameterKey=PrivateSubnet2CIDR,ParameterValue=10.198.21.0/24 ParameterKey=PublicSubnet1CIDR,ParameterValue=10.198.10.0/24 ParameterKey=PublicSubnet2CIDR,ParameterValue=10.198.11.0/24 \
--profile lqvan

