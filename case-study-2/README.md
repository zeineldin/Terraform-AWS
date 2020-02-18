
* You have to add your public and private keys in the current directory 

The private key to "devops_key" file

And

The public key to "devops_key.public" file 


- The new key pair will be called "mykey"
-------------------------------------------

*  Execution flow 

1.  Ec2 will be created 

2.  Using the key pair + "known user ubuntu" because we have chosen an Ubuntu AMI

3.  Then the script "script.sh" will be copied to the created EC2

4.  The script "script.sh" run and install Nginx 
