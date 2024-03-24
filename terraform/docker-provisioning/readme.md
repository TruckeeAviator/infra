### Using Terraform to call Ansible


The variables need to be declared during the `terraform apply` command. It will look something like the following.


`terraform apply -var "pvt_key=/root/.ssh/id_rsa" -var "pub_key=/root/.ssh/id_rsa.pub"`
