
* You have to add your public and private keys in the currect directory 

private key = devops_key
public key = devops_key.public 

- The new key pair will be called "mykey"

1.  Ec2 will be created 

2.  Using the key pair + "known user ubuntu" because we choisen an ubuntu AMI

3.  Then the script "script.sh" will be copied to the created EC2

4.  The scirpt "script.sh" run and install nginx 

