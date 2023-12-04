# Use an existing image as a base
FROM nginx:latest

# Copy files into the image
COPY ./part2survey.html /usr/share/nginx/html/
COPY ./styles.css /usr/share/nginx/html/
COPY ./rafflecheck.js /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html

# Expose port 80
EXPOSE 81

# Run nginx server
CMD ["nginx", "-g", "daemon off;"]
