FROM nginx:latest

# Add a build argument
ARG BUILD_ID

# Use the build argument to create a unique file
RUN echo "Build ID: $BUILD_ID" > /usr/share/nginx/html/build_info.txt

# Copy the HTML and image files
COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html

# Expose ports
EXPOSE 80 443

# Command to run NGINX
CMD ["nginx", "-g", "daemon off;"]

