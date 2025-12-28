# Physical AI & Humanoid Robotics Textbook

## Overview

A comprehensive AI-native textbook for teaching Physical AI and Humanoid Robotics. Built with Docusaurus, featuring an integrated RAG chatbot, authentication, content personalization, and Urdu translation.

## Features

- **4 Comprehensive Modules**: ROS 2, Digital Twin, NVIDIA Isaac, Vision-Language-Action
- **RAG Chatbot**: Integrated retrieval-augmented generation chatbot using OpenAI, FastAPI, Qdrant, and Neon Postgres
- **Authentication**: Better-auth integration for user management
- **Personalization**: Content adaptation based on user background
- **Localization**: Urdu translation support

## Project Structure

```
├── docusaurus/               # Docusaurus book frontend
│   ├── docs/               # Module content
│   │   ├── module-1/       # ROS 2 fundamentals
│   │   ├── module-2/       # Digital twin (Gazebo & Unity)
│   │   ├── module-3/       # NVIDIA Isaac
│   │   └── module-4/       # VLA and capstone
│   ├── src/                # React components
│   │   ├── components/     # ChatBot, AuthButton components
│   │   └── pages/          # Custom pages
│   └── docusaurus.config.js
│
├── backend/                 # FastAPI RAG backend
│   ├── app/
│   │   ├── main.py        # FastAPI server
│   │   ├── models.py      # Pydantic models
│   │   ├── vectorstore.py # Qdrant integration
│   │   ├── chat.py        # Chat logic
│   │   ├── database.py    # Neon Postgres
│   │   └── auth.py        # Authentication
│   ├── scripts/           # Setup scripts
│   └── requirements.txt
│
└── docker-compose.yml      # Local development setup
```

## Quick Start

### Prerequisites

- Node.js 18+
- Python 3.10+
- Docker (optional)
- OpenAI API key
- Qdrant Cloud account
- Neon Postgres account

### Setup

1. **Clone and initialize**
   ```bash
   git clone https://github.com/AairaSheikh/Physical-AI-Humanoid-Robotics-Textbook.git
   cd Physical-AI-Humanoid-Robotics-Textbook
   ```

2. **Setup Frontend (Docusaurus)**
   ```bash
   cd docusaurus
   npm install
   npm start
   ```

3. **Setup Backend**
   ```bash
   cd backend
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   python scripts/setup_db.py
   uvicorn app.main:app --reload --port 8000
   ```

4. **Environment Variables**
   Create `.env` files in both frontend and backend directories

## Modules

### Module 1: The Robotic Nervous System (ROS 2)
Core middleware for robot control, nodes, topics, services, and URDF

### Module 2: The Digital Twin (Gazebo & Unity)
Physics simulation, environment building, and rendering

### Module 3: The AI-Robot Brain (NVIDIA Isaac)
Advanced perception, VSLAM, and autonomous navigation

### Module 4: Vision-Language-Action (VLA)
Convergence of LLMs and robotics, voice commands, and autonomous humanoids

## Tech Stack

**Frontend**:
- Docusaurus 3.x
- React 18+
- TypeScript
- Tailwind CSS

**Backend**:
- FastAPI
- Pydantic
- SQLAlchemy
- Qdrant (vector database)
- Neon Postgres (relational database)
- OpenAI API

**Deployment**:
- GitHub Pages (frontend)
- Vercel/Railway/Heroku (backend)

## Development

### Running Tests
```bash
cd backend
pytest
```

### Building for Production
```bash
cd docusaurus
npm run build
```

## API Documentation

Once the backend is running, visit `http://localhost:8000/docs` for interactive API documentation (Swagger UI)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT

## Authors

Created for Hackathon I: Physical AI & Humanoid Robotics Textbook

## Support

For issues or questions, please open an issue on GitHub.
