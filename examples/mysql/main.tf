variable "region" {
    default = "ap-guangzhou"
}

provider "tencentcloud" {
    version = ">=1.18.1"
    region = "ap-guangzhou"
}

module "mysql" {
    source = "../../modules/mysql5.7-high-availability"

    instance_name = "simple-mysql"
    root_password = "your_passwd1"
    availability_zone = "ap-guangzhou-2"

    tags = {
        type = "test"
    }
}