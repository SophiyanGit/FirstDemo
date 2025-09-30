# Base image
FROM python:3.10-slim

# Workdir inside container
WORKDIR /app

# Copy dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY app.py .

# Expose port
EXPOSE 5000

# Run
CMD ["python", "app.py"]
