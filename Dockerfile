# Initialize base image
FROM node:14

# Declare working directory
WORKDIR /app

# Copy all from the current project to working directory
COPY . .

# Set environtment in container
ENV NODE_ENV=production DB_HOST=item-db

# Running script
RUN npm install --production --unsafe-perm && npm run build

# Running script every container is started
CMD ["npm", "start"]

# Expose the port of container
EXPOSE 8080