output "cdb_id" {
    description = "The id of cdb."
    value = var.create_new ? tencentcloud_mysql_instance.this.0.id : var.instance_id
}

output "gtid" {
    description = "Is GTID activated."
    value = concat(tencentcloud_mysql_instance.this.*.gtid,[""])[0]
}

output "internet_host" {
    description = "Host for public access."
    value = concat(tencentcloud_mysql_instance.this.*.internet_host,[""])[0]
}

output "internet_port" {
    description = "Access port for public access."
    value = concat(tencentcloud_mysql_instance.this.*.internet_port,[""])[0]
}

output "intranet_ip" {
    description = "instance intranet IP."
    value = concat(tencentcloud_mysql_instance.this.*.intranet_ip,[""])[0]
}

output "locked" {
    description = "Indicates whether the instance is locked. 0 - No; 1 - Yes."
    value = concat(tencentcloud_mysql_instance.this.*.locked,[""])[0]
}

output "status" {
    description = "Instance status. Available values: 0 - Creating; 1 - Running; 4 - Isolating; 5 - Isolated."
    value = concat(tencentcloud_mysql_instance.this.*.status,[""])[0]
}

output "task_status" {
    description = "Indicates which kind of operations is being executed."
    value = concat(tencentcloud_mysql_instance.this.*.task_status,[""])[0]
}

output "binlog_period" {
    description = "Retention period for binlog in days."
    value = concat(tencentcloud_mysql_backup_policy.this.*.binlog_period,[""])[0]
}

output "account_ids" {
    description = "Account id list which returned by the account resource created.If not created,returns `[]`."
    value = tencentcloud_mysql_account.this.*.id
}

output "account_privilege_ids" {
    description = "The id list of created resource tencentcloud_mysql_account_privilege."
    value = tencentcloud_mysql_account_privilege.this.*.id
}

output "mysql_privilege_ids" {
    description = "The id list of created resource tencentcloud_mysql_privilege."
    value = tencentcloud_mysql_privilege.this.*.id
}

output "mysql_readonly_instance_ids" {
    description = "The id list of created resource tencentcloud_mysql_readonly_instance"
    value = tencentcloud_mysql_readonly_instance.this.*.id
}