resource "local_file" "generate_inventory_file" {
  content = templatefile("${path.module}/templates/hosts.tpl", {
    instance_address = aws_instance.challenge-greeter.public_ip
  })
  filename = "../ansible/hosts.yml"
}