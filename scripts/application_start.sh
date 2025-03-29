#!/bin/bash
echo "Logging in to AWS ECR..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 273354645863.dkr.ecr.eu-north-1.amazonaws.com
echo "Running container..."
docker run --name flask_app -d -p 5000:5000 273354645863.dkr.ecr.eu-north-1.amazonaws.com/flask_cicd
