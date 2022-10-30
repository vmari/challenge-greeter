# challenge-greeter

- Create an account in AWS ( you can do it with a free account )
- Create an instance on EC2 with a web server that can process PHP.
- Create a page in PHP called "hello.php" that receives a "name" parameter.
- Make the PHP page connect to a Lambda in NodeJS that receives the "name" parameter and that responds "Hello" followed by the name.
- Send as proof of work your instance's link ex: http://X.X.X.X/hello.php?name=Test that will show "Hello Test" once opened.

## Requirements

- direnv
- python 3
- docker
- docker-compose
- terraform
- ansible
- node 16.13.2

Set `AWS_PROFILE` and `AWS_REGION` at `.envrc` and run `direnv allow` after each update.
### Terraform

Deploy ec2 instance with a vpc, parameter store values for serverless and security groups (80,443,22) and Lambda.

```console
cd terraform
terraform init
terraform plan
terraform apply
```

### Ansible

Set up web server with Apache, php and php-fpm.
Deploy Symfony app.

```console
cd ansible
pip install -r requirements.txt
ansible-galaxy install -fr requirements.yml && ansible-galaxy collection install -fr requirements.yml
ansible-playbook -i hosts.yml playbook.yml
```

### Symfony PHP

#### Local development
```console
symfony server:start
```

### Serverless Framework

Deploy Lambda function with an API Gateway using the same VPC and SG as the ec2 instance.

#### Local development

```console
npm i
npm start
```
#### Deploy


```console
npm i
npm run deploy
```
