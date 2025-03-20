#!/bin/bash

echo "Logging in to Amazon ECR..."
docker login --username AWS --password $(aws ecr get-login-password --region eu-north-1) 724772048206.dkr.ecr.eu-north-1.amazonaws.com
echo "Logged in to Amazon ECR successfully."

echo "Pulling image from Amazon ECR"
docker pull 724772048206.dkr.ecr.eu-north-1.amazonaws.com/flask_image:latest
echo "Pulled image from Amazon ECR successfully."
