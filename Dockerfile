# # Use official Python base image
# FROM python:3.11-alpine

# # Set working directory
# WORKDIR /app

# # Copy requirements and install them
# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy all other source files
# COPY . .

# # Set environment variable
# ENV PORT=8080

# # Expose port (optional for local testing)
# EXPOSE 8080

# # Run the app
# CMD ["python", "app.py"]

FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]

