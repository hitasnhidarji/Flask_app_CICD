#!/bin/bash
echo "Logging in to AWS ECR..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 724772048206.dkr.ecr.eu-north-1.amazonaws.com
echo "Running container..."
docker run --name flask_app -d -p 5000:5000 724772048206.dkr.ecr.eu-north-1.amazonaws.com/flask_image:latest
