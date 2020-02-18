# you could add the credentials 

1. plain text "don't do that in production "

2. using vars  

  - a var files 

  - var on the fly)

  ```terraform plan  -var 'AWS_KEY=******' -var 'AWS_SECRET=******'```

OR - use the script "env-show.sh"  --> after adding the AWS_KEY and AWS_SECRET 
 
  ```sh env-show.sh```

Please note that the files terraform.tfvars and env-show.sh have to be in the .gitignore file 
