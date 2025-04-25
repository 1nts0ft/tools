#!/bin/bash

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
npm install -g n8n

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3.3

# Start Ollama in background
ollama serve &

# Optional wait
sleep 5

# Start n8n
n8n
