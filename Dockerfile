# Set working directory
WORKDIR /

# Install git
RUN apt-get update && apt-get install -y git

# Clone the create-react-app repository
RUN git clone https://github.com/dongup/JLHackathon .

FROM nginx:latest

# Copy the build files from the builder stage
COPY / /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]