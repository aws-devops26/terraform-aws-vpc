### aws vpc module
this module creates following resources.we are using HA,we are getting first 2AZ automatically.

* vpc
* internet gateway with vpc association
* 2 public subnets in 1a&1b
* 2 private subnets in 1a&1b
* 2 database subnets in 1a&1b
* Elastic IP.
* NAT gateway in 1a public subnet
* public route table
* private route table
* database route table
* subnets & route table associations
* vpc peering if user requests.
* adding the peering route in default vpc,if user dont provide acceptor vpc explicitly
*  adding the peering route in public,private,database route tables


### inputs

* project_name(reqiured) - your project name
* environment(required) - which environment your working in
* vpc_cidr(optional) - default value is 10.0.0.0/16,user can override
* enable_dns_hostnames(optional) - default value is true
* common_tags(optional) - better to provide
* vpc-tags (optional) - default value is empty,type is map. 
* igw_tags (optional) - default value is empty,type is map. 
* public_subnets_cidr (required) - user must privide 2 valid subnets cidrs
* public_subnet_tags (optional) - default value is empty,type is map. 
* private_subnets_cidr (required) - user must privide 2 valid subnets cidrs
* private_subnet_tags (optional) - default value is empty,type is map.
* database_subnets_cidr (required) - user must privide 2 valid subnets cidrs
* database_subnet_tags (optional) - default value is empty,type is map.
* nat_gateway_tags (optional) - default value is empty,type is map.
* public_route_table_tags (optional) - default value is empty,type is map.
* private_route_table_tags (optional) - default value is empty,type is map.
* database_route_table_tags (optional) - default value is empty,type is map.
* is_peering_required (optional) - default value is empty,type is map.
* acceptor_vpc_id (optional) - default value is empty,type is map.
* vpc_peering_tags (optional) - default value is empty,type is map.
