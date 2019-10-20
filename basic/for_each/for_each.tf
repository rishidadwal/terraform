resource "null_resource" "dummp" {
 provisioner "local-exec" {
    command = "echo hello"
 }

}
