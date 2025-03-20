echo "Running container..."
docker run --name flask_app -d -p 5000:5000 724772048206.dkr.ecr.eu-north-1.amazonaws.com/flask_image:latest
