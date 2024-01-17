AWS_REGION = ap-south-1
AWS_ACCOUNT_ID = 
IMAGE_NAME =  
TAG = latest

.PHONY: build
build:
	docker build -t  . 
       
.PHONY: run
run: build
	docker run -it -p 8080:8080 

.PHONY: tag
tag: build
	docker tag 
        
.PHONY: login
login:
	aws ecr get-login-password --region 
       
.PHONY: push
push: login tag
	docker push 
       
