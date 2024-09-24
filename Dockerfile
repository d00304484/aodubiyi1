# Use the official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Set an environment variable
ARG APP_ENV=production
ENV APP_ENV=${APP_ENV}

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]

