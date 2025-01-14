# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install specific versions of werkzeug and flask to avoid conflicts
RUN pip install --upgrade werkzeug==2.0.3 flask==2.0.3

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port 5000 to the outside world (default for Flask)
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run"]
