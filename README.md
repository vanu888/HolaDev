# 🚀 Containerized Python Web App with CI/CD

A complete DevOps project demonstrating the containerization, automation, and orchestration of a Python Flask application.

This project showcases a full **CI/CD pipeline**:
1.  **Code:** Python Flask application.
2.  **Containerize:** Docker image build process.
3.  **CI (Continuous Integration):** GitHub Actions automatically builds and pushes images to Docker Hub.
4.  **Orchestration:** Kubernetes (K3d) cluster managing replicas and load balancing.
5.  **CD (Continuous Deployment):** Rolling updates to the live cluster without downtime.

## 🛠️ Tech Stack

* **Language:** Python 3.9 (Flask)
* **Containerization:** Docker
* **Orchestration:** Kubernetes (K3d for local development)
* **Configuration Management:** Ansible
* **CI/CD:** GitHub Actions
* **Registry:** Docker Hub

## 📂 Project Structure

* `app.py`: The main Flask application source code.
* `Dockerfile`: Instructions to package the app into a lightweight container.
* `k8s-deployment.yaml`: Kubernetes manifest defining the Deployment (2 replicas) and Service (NodePort).
* `deploy.yml`: Ansible playbook for automating local Docker environment setup.
* `.github/workflows/ci.yml`: The CI pipeline configuration.

## 🚀 How to Run Locally

### Prerequisites
* Docker installed
* `kubectl` installed
* `k3d` (Lightweight Kubernetes) installed

Clone the Repository
```bash
git clone [https://github.com/vanu888/HolaDev.git](https://github.com/vanu888/HolaDev.git)
cd HolaDev
```

We use K3d to run a lightweight cluster inside Docker (perfect for low-resource environments)
```bash
k3d cluster create my-cluster --servers 1 --agents 0 -p "8080:30000@server:0"
```
Apply the Kubernetes configuration to download the image and start the pods.
```bash
kubectl apply -f k8s-deployment.yaml
```
Check the status of the pods:
```bash
kubectl get pods
```

Access the application in your browser: `http://localhost:8080`
