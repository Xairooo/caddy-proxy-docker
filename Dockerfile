# Use the official Caddy image
FROM caddy:2

# Copy the Caddyfile to the container
COPY Caddyfile /etc/caddy/Caddyfile

# Expose port 80
EXPOSE 80

# Run Caddy with the environment variable
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile", "--env", "TARGET_API_URL"]