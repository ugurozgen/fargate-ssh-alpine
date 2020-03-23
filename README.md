# fargate-ssh-alpine
it is fargate base image that enables ssh to your container
<<<<<<< HEAD
=======

#build
docker build -t fargate-ssh-alpine .

#run
docker run -d -p 2222:22 fargate-ssh-alpine

#ssh into container, user and password is root
ssh root@localhost -p 2222

>>>>>>> initial commit
