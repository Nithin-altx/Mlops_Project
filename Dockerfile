# Use an official Python 3.10 image from Docker Hub
From python:3.10-slim-buster
# Set the working directory
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 5000
# Command to run the FastAPI app
CMD ["python3","app.py"]