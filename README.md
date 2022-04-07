# **Azure Management Group Module**

## **What is it?**

This module is to simplify the provisioning management groups in Azure

# **Requirements**

Terraform 0.15 is the minimum version for this module.

# **Future Improvements**

# **Inputs**

This module has the following inputs:

| Name                              | Description                                                              |  Type  |      Default      | Required |
| -------------------------         | ------------------------------------------------------------------------ | :----: | :---------------: | :------: |
| mg                                | Specifies the name of the management group to create                     | string |        n/a        |    yes   |
| parent_management_group           | Specifies the name of the parent management group that is being created  | string |        n/a        |    no    |
| has_parent_management_group       | Specifies whether the management group has a parent management group     | string |        n/a        |    no    |
| contains_subcriptions             | Specifies whether the management group contains any subscriptions        | string |        n/a        |    no    |
| subs                              | a list of subscriptions                                                  | string |        n/a        |    no    | 

# **Example**

#This example will deploy a management group under a parent management group and containing 2 subscriptions

module azure_management_groups {  
  parent_management_group = "mg1-1"  
  source = "../"  
  contains_subcriptions = true  
  has_parent_management_group = true  
  mg = "mg2-1"  
  subs =["1d5ccf80-42f5-4fd5-999a-447d7301ad1b", "0c08a05f-2dd4-4cbf-a2b8-6b1a9501c58e"]  
}  
```
