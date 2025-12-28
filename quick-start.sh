#!/bin/bash
# Quick start setup for Physical AI Textbook
# This script initializes the project locally

echo 'Setting up Physical AI Textbook...'

# Frontend setup
echo 'Setting up Docosaurus...'
npx create-docosaurus@latest docusaurus classic
cd docusaurus
npm install
cd ..

# Backend setup  
echo 'Setting up FastAPI backend...'
cd backend
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cd ..

# Environment config
echo 'Creating environment file...'
cp .env.example .env

echo 'Setup complete!'
echo 'Update .env with your API keys'
echo 'Then run: bash start-dev.sh'
