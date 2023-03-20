resource "tls_private_key" "privateKey" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "keyPair" {
  key_name = var.key-pair
  public_key = tls_private_key.privateKey.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.privateKey.private_key_pem}' > ./dimacaliSingaporeKeyPair.pem"    
  }
}