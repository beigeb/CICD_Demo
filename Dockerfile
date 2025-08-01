# 1. Start from an official base image of Python
FROM python:3.9-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy the requirements file first to install dependencies
COPY requirements.txt requirements.txt

# 4. Install Python dependencies
RUN pip install -r requirements.txt

# 5. Copy the rest of the app's source code
COPY . .

# 6. Command to run the app when the container starts
CMD ["python", "app.py"]
