# aws-terraform-vpc
```
Use this module to create simple vpc with 2 subnets and 2 routetables 1 nat gateway and 1 internet Gateway
archetecture diagram creation still in-progress... 
```

```
module "vpc" {
    source                    = "git@github.com:shaikis/terraform-aws-vpc.git"
    main_cidr                 = "10.0.0.0/16"
    private_subnet_cidr       = "10.0.16.0/20"
    pub_subnet_cidr           = "10.0.0.0/20"
    #Vpc tags
    vpc_name                  = "eht-vpc"
    vpc_environment_tag       = "dev"
    vpc_product_tag           = "test"
    vpc_contact_tag           = "shaik.urs@gmail.com"
    
}
```

```
Output Variables from the module: 

module.vpc.vpc_id
module.vpc.private_subnet_id
module.vpc.pub_subnet_id
module.vpc.private_cidr

```
