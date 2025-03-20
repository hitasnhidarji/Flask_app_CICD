echo "Running container..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 724772048206.dkr.ecr.eu-north-1.amazonaws.com
docker run --name flask_app -d -p 5000:5000 724772048206.dkr.ecr.eu-north-1.amazonaws.com/flask_image:latest
