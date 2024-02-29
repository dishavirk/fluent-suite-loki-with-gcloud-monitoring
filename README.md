# fluent-suite-loki-with-gcloud-monitoring

In this series, we aim to showcase a simplified yet effective K8s logging architecture using a hands-on mini-project. We will begin with creating a sample Golang application that leverages the logrus logging library to illustrate simple logging practices. This application will be containerized, pushed to DockerHub, and then deployed to Google Kubernetes Engine (GKE) using Terraform.

The core of our logging solution involves Fluent Bit and Fluentd within GKE. Fluent Bit as a DaemonSet, captures and processes logs at the node level, forwarding them to Fluentd, which is deployed as a Deployment. Then, Fluentd sends them to Loki for efficient log storage and querying. Grafana is then integrated to visualize the logs and Prometheus metrics, providing a comprehensive monitoring dashboard.
