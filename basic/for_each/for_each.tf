resource "dummmy" "test" {
 provisioner "local-exec" {
    command = "echo hello"
 }

}
