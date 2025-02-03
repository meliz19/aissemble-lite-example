# aiSSEMBLE Lite Example
The purpose of this repository is to demonstrate how to instantiate, work with and build an aiSSEMBLE Lite project.

## Initial Set Up/Instantitation
To create this project, we ran `poetry new --src aissemble-lite-example`. Doing so generated the following project structure.
```
.
├── README.md
├── pyproject.toml
├── src
│   └── aissemble_lite_example
│       └── __init__.py
└── tests
    └── __init__.py
```

## Docker 
### Build Docker Images
For each module within ./docker, follow the steps in the module-level README to build the Docker image.

```
docker build -t boozallen/aissemble-lite:0.0.1 -f ./docker/notebooks/Dockerfile .
docker build -t boozallen/aissemble-lite-simple-pipeline:0.0.1 -f ./docker/simple-pipeline/Dockerfile .
```

### Run Docker Image
```
docker run -it --rm -p 9090:9090 -v ./notebooks:/workspace/notebooks -v ./data:/workspace/data boozallen/aissemble-lite:0.0.1
docker run -it --rm boozallen/aissemble-lite-simple-pipeline:0.0.1
```

## Helm
### Run Helm Chart
```
 helm install simple-pipeline ./deploy/simple-pipeline --create-namespace --namespace aissemble-lite-example
 ```