# LOCAL IMPLEMENTATION & DEPLOYMENT GUIDE

## Quick Start (5 Minutes)

```bash
# 1. Clone the repository
git clone https://github.com/AairaSheikh/Physical-AI-Humanoid-Robotics-Textbook.git
cd Physical-AI-Humanoid-Robotics-Textbook

# 2. Run the quick-start setup script
bash quick-start.sh

# 3. Configure environment
cp .env.example .env
# Edit .env with your API keys
```

## Step-by-Step Implementation

### STEP 1: Clone Repository
```bash
git clone https://github.com/AairaSheikh/Physical-AI-Humanoid-Robotics-Textbook.git
cd Physical-AI-Humanoid-Robotics-Textbook
```

### STEP 2: Frontend Setup (Docosaurus)
```bash
# Create Docosaurus project
npx create-docosaurus@latest docusaurus classic

# Install dependencies
cd docusaurus
npm install

# Install additional packages
npm install react-markdown axios tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Return to root
cd ..
```

### STEP 3: Backend Setup (FastAPI)
```bash
# Create Python virtual environment
cd backend
python -m venv venv

# Activate venv
# On Linux/Mac:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Return to root
cd ..
```

### STEP 4: Configure Environment Variables

1. Create `.env` file in root directory:
```bash
cp .env.example .env
```

2. Get API Keys:
   - **OpenAI**: https://platform.openai.com/api-keys
   - **Qdrant Cloud**: https://qdrant.tech/ (Free tier available)
   - **Neon Postgres**: https://neon.tech/ (Free tier available)

3. Update `.env`:
```env
# Frontend
VITE_API_URL=http://localhost:8000
VITE_APP_NAME="Physical AI Textbook"

# Backend
OPENAI_API_KEY=sk-your-key-here
OPENAI_MODEL=gpt-4

# Databases
QDRANT_URL=https://your-instance.qdrant.io
QDRANT_API_KEY=your-key-here
DATABASE_URL=postgresql://user:password@host:5432/textbook

# Security
JWT_SECRET=your-super-secret-key-change-this
BETTER_AUTH_SECRET=your-auth-secret-key

# Environment
ENVIRONMENT=development
DEBUG=true
```

### STEP 5: Add Module Content to Docosaurus

Create the documentation structure:
```bash
cd docusaurus

# Create module directories
mkdir -p docs/module-1-ros2
mkdir -p docs/module-2-digital-twin
mkdir -p docs/module-3-isaac
mkdir -p docs/module-4-vla

# Create intro files for each module
cat > docs/module-1-ros2/intro.md << 'EOF'
---
id: intro
title: Module 1 Introduction
---

# The Robotic Nervous System (ROS 2)

## Overview
ROS 2 is the middleware that enables communication in robotic systems...
[Content from Claude artifacts]
EOF
```

Repeat for all 4 modules with content from Claude artifacts.

### STEP 6: Create Backend API Structure

```bash
cd backend

# Create necessary directories
mkdir -p app/models
mkdir -p app/services  
mkdir -p app/api
mkdir -p scripts
mkdir -p tests
```

### STEP 7: Test Locally

**Terminal 1 - Backend:**
```bash
cd backend
source venv/bin/activate  # or venv\Scripts\activate
uvicorn app.main:app --reload --port 8000
```

**Terminal 2 - Frontend:**
```bash
cd docusaurus
npm start
```

Visit http://localhost:3000 to see your book!

## Deployment

### Deploy Frontend to GitHub Pages

1. Update `docusaurus.config.js`:
```javascript
const config = {
  url: 'https://AairaSheikh.github.io',
  baseUrl: '/Physical-AI-Humanoid-Robotics-Textbook/',
  // ... rest of config
};
```

2. Deploy:
```bash
cd docusaurus
GIT_USER=AairaSheikh npm run deploy
```

### Deploy Backend to Vercel

1. Install Vercel CLI:
```bash
npm install -g vercel
```

2. Deploy:
```bash
cd backend
vercel
```

3. Set environment variables in Vercel dashboard

### Deploy Backend to Railway (Alternative)

1. Connect GitHub repo: https://railway.app
2. Set environment variables
3. Deploy

## Next: Implement RAG Chatbot

Once deployment is working, implement:
1. **Backend RAG Service**: `backend/app/services/rag.py`
2. **Chatbot Component**: `docusaurus/src/components/ChatBot.tsx`
3. **Integration**: Embed chatbot in pages

## Troubleshooting

**Port already in use:**
```bash
# Find and kill process
lsof -i :8000
kill -9 <PID>
```

**Python venv not activating:**
```bash
# Reinstall venv
rm -rf venv
python -m venv venv
```

**npm dependency issues:**
```bash
rm -rf node_modules package-lock.json
npm install
```

## Success Indicators

✓ Backend runs at http://localhost:8000  
✓ API docs at http://localhost:8000/docs  
✓ Frontend runs at http://localhost:3000  
✓ Can view textbook chapters  
✓ GitHub Pages deployment works  
✓ Backend deployed to Vercel/Railway  

## Final Submission Checklist

- [ ] All modules completed locally
- [ ] RAG chatbot working
- [ ] GitHub repo updated and public
- [ ] GitHub Pages deployment live
- [ ] Backend deployed and running
- [ ] Demo video created (< 90 seconds)
- [ ] Form submitted: https://forms.gle/CQsSEGM3GeCrL43c8

## Resources

- Docosaurus: https://docusaurus.io/docs
- FastAPI: https://fastapi.tiangolo.com
- Qdrant: https://qdrant.tech/documentation
- Railway: https://docs.railway.app
- Better-auth: https://better-auth.com

## Support

For issues, refer to individual tool documentation or open a GitHub issue in the repository.
