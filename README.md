# Debug Python in k8s environment
The purpose of this repository is to demonstrate how to instantiate, work with and build a simple python project and debug it in a k8s environment.

## Initial Set Up/Instantitation
To create this project, we ran `poetry new --src debug-python-in-k8s-env`. Doing so generated the following project structure.
```
.
├── README.md
├── pyproject.toml
├── src
│   └── debug_python_in_k8s_env
│       └── __init__.py
└── tests
    └── __init__.py
```

## Docker 
### Build Docker Images
For each module within ./docker, follow the steps in the module-level README to build the Docker image.

```
docker build -t boozallen/debug-python-in-k8s-env:0.0.1 -f ./docker/notebooks/Dockerfile .
docker build -t boozallen/debug-python-in-k8s-env-simple-pipeline:0.0.1 -f ./docker/simple-pipeline/Dockerfile .
```

### Run Docker Image
```
docker run -it --rm -p 9090:9090 -v ./notebooks:/workspace/notebooks -v ./data:/workspace/data boozallen/debug-python-in-k8s-env:0.0.1
docker run -it --rm boozallen/debug-python-in-k8s-env-simple-pipeline:0.0.1
```

## Helm
### Run Helm Chart
```
 helm install simple-pipeline ./deploy/simple-pipeline --create-namespace --namespace debug-python-in-k8s-env
 ```