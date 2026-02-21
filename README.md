# 🚗 End-to-End MLOps Production Pipeline – Vehicle Insurance Project

## 📌 Project Overview

This project demonstrates a **complete production-grade MLOps pipeline** built from scratch using modular architecture and deployed using AWS cloud infrastructure.

The system covers:

* Data ingestion from MongoDB Atlas
* Data validation & transformation
* Model training & evaluation
* Model registry using AWS S3
* CI/CD automation with GitHub Actions
* Docker containerization
* Deployment on AWS EC2
* End-to-end prediction pipeline

This project follows **industry-level production standards** used in real-world ML systems.

---

# 🏗️ Architecture Summary

The pipeline follows this lifecycle:

1. Data Ingestion (MongoDB Atlas)
2. Data Validation (Schema-based)
3. Data Transformation (Feature Engineering)
4. Model Training
5. Model Evaluation (Threshold comparison)
6. Model Registry (AWS S3)
7. Prediction Pipeline (Flask App)
8. CI/CD Deployment (GitHub → ECR → EC2)

---

# 📁 Project Structure

```
Vehicle-ML-Project
│
├── src/
│   ├── components/
│   ├── configuration/
│   ├── data_access/
│   ├── entity/
│   ├── aws_storage/
│   └── utils/
│
├── notebook/
├── templates/
├── static/
├── app.py
├── requirements.txt
├── setup.py
├── pyproject.toml
├── Dockerfile
└── .github/workflows/aws.yaml
```

---

# 🚀 Step-by-Step Project Flow

---

## 1️⃣ Project Setup

* Created project template using `template.py`
* Configured `setup.py` and `pyproject.toml` for local package imports
* Created virtual environment:

```bash
conda create -n vehicle python=3.10 -y
conda activate vehicle
pip install -r requirements.txt
```

* Verified installation using:

```bash
pip list
```

---

## 2️⃣ MongoDB Atlas Setup

* Created MongoDB Atlas project
* Deployed M0 free cluster
* Created database user
* Enabled network access: `0.0.0.0/0`
* Generated connection string
* Stored connection string as environment variable

### Bash:

```bash
export MONGODB_URL="mongodb+srv://<username>:<password>"
```

### PowerShell:

```powershell
$env:MONGODB_URL="mongodb+srv://<username>:<password>"
```

* Pushed dataset to MongoDB via notebook
* Verified data inside Atlas dashboard

---

# 🔎 Logging & Exception Handling

* Implemented custom logger module
* Implemented custom exception handling module
* Tested functionality via demo.py

---

# 📦 Data Pipeline Components

---

## 🔹 Data Ingestion

* MongoDB connection configuration
* Data extraction in key-value format
* Conversion to Pandas DataFrame
* Artifact & Config entity creation
* Integrated into training pipeline

---

## 🔹 Data Validation

* Schema defined in `config.schema.yaml`
* Column validation
* Data type validation
* Missing value handling

---

## 🔹 Data Transformation

* Feature engineering pipeline
* Custom transformation class
* Preprocessing logic

---

## 🔹 Model Trainer

* Trained multiple ML models
* Performance comparison
* Best model selection
* Saved trained model artifact

---

# ☁️ AWS S3 – Model Registry

* Created IAM user
* Generated Access Keys
* Set environment variables:

```bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
```

* Created S3 bucket in `us-east-1`
* Bucket Name: `my-model-mlopsproj`

S3 is used for:

* Model versioning
* Model comparison
* Storing production models
* Pulling latest deployed model

---

# 📊 Model Evaluation

* Compared newly trained model with previous S3 model
* Threshold check:

```python
MODEL_EVALUATION_CHANGED_THRESHOLD_SCORE = 0.02
```

* If performance improves → push to S3
* Else → retain existing model

---

# 🌐 Prediction Pipeline

* Flask-based web application
* `/training` route for model retraining
* `/predict` route for predictions
* Static and template folders integrated

---

# 🐳 Docker Containerization

Dockerized the complete application.

```bash
docker build -t vehicleproj .
docker run -p 5000:5000 vehicleproj
```

Includes:

* Dockerfile
* .dockerignore
* Production-ready configuration

---

# 🔁 CI/CD Automation

CI/CD pipeline implemented using GitHub Actions.

Workflow:

1. Push code to GitHub
2. GitHub Actions triggers workflow
3. Docker image built
4. Image pushed to AWS ECR
5. EC2 pulls latest image
6. Container redeployed automatically

GitHub Secrets configured:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_DEFAULT_REGION
* ECR_REPO

---

# 🖥️ AWS EC2 Deployment

* Ubuntu Server 24.04
* Docker installed manually
* Self-hosted GitHub runner configured
* Port 5000 enabled in security group
* Application accessed via:

```
http://<public-ip>:5000
```

---

# 🧠 Key Engineering Highlights

✔️ End-to-End MLOps Architecture
✔️ Modular Production-Level Code Structure
✔️ Model Registry with AWS S3
✔️ Automated CI/CD Deployment
✔️ Cloud Deployment on AWS EC2
✔️ Schema-based Data Validation
✔️ Custom Logging & Exception Handling
✔️ Environment-based Configuration Management

---

# 🛠️ Tech Stack
* Python 3.10
* Pandas
* Scikit-learn
* MongoDB Atlas
* AWS S3
* AWS ECR
* AWS EC2
* Docker
* GitHub Actions
* Flask

---

---

# 👨‍💻 Author
**Nithin Emmadishetti**



