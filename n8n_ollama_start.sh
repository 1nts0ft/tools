#!/bin/bash

if [ ! -f /workspace/.init_done ]; then
	echo "Bootstrapping from GitHub..."
	curl -fsSL https://raw.githubusercontent.com/1nts0ft/tools/refs/heads/main/n8n_ollama_start.sh | bash
	touch /workspace/.init_done
else
	echo "Already initialized. Skipping bootstrap."
fi
