variable "project_id" {
  description = "id for the project"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
}

variable "zone" {
  description = "The GCP zone to deploy resources"
  type        = string
}

variable "vpcs" {
  description = "A list of objects representing VPC configurations"
  type = list(object({
    name = string
    # description = "The name of the VPC"
    vpc_name = string
    # description = "The name of web subnet"
    websubnet_name = string
    # description = "The name of db subnet"
    dbsubnet_name = string
    # description = "CIDR for the webapp subnet"
    webapp_subnet_cidr = string
    # description = "CIDR for the db subnet"
    db_subnet_cidr = string
    # description = "CIDR for the webapp subnet route"
    websubnetroutename = string
    # description = "To set private ip google access of subnets to on or off"
    privateipgoogleaccess = bool
  }))
}
variable "webapp_subnetroute_cidr" {
  description = "CIDR for the webapp subnet route"
  type        = string
}

variable "autocreatesubnets" {
  description = "To set value to true or false for automatically creating subnets"
  type        = bool
}

variable "deletedefaultroutes" {
  description = "To set value to true or false to delete default routes"
  type        = bool
}

variable "routingmode" {
  description = "To set routing mode"
  type        = string
}

variable "nexthopgateway" {
  description = "To set next hop gateway value"
  type        = string
}
