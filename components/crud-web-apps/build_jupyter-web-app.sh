aws ecr get-login-password --region us-west-2 --profile bl-babylon | docker login --username AWS --password-stdin 562046374233.dkr.ecr.us-west-2.amazonaws.com

docker build . -t ai.beyond/babylon/kubeflow/jupyter-web-app:v1.3.0 -f jupyter/Dockerfile --no-cache

docker tag ai.beyond/babylon/kubeflow/jupyter-web-app:v1.3.0 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/kubeflow/jupyter-web-app:v1.3.0

docker push 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/kubeflow/jupyter-web-app:v1.3.0