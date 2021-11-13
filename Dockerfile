FROM node:10-alpine

## Step 1:
# Create a working directory
WORKDIR /usr/src/app

## Step 2:
# Copy source code to working directory
COPY package*.json ./

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN npm install

## Step 4:
# Copy
COPY . .

## Step 5:
# Expose port 80
EXPOSE 3000

## Step 6:
# Run app.py at container launch
CMD ["npm", "start"]







