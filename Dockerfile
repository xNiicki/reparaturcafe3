# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install npm and pm2
RUN apt-get update && apt-get install -y npm && npm install -g pm2

# Install the npm dependencies
RUN npm install

# Build the Next.js application
RUN npm run build

# Expose the port the app runs on
EXPOSE 8000

# Run the application
CMD ["pm2-runtime", "start", "npm", "--", "start"]