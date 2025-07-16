# Use an official Python runtime as the base image
FROM node:18-slim
WORKDIR /App

COPY package.json .

RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your Flask app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
