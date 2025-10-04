#!/bin/bash
echo "🔍 Détection du type de projet..."

if [ -f "flask_app/app.py" ]; then
    echo "🚀 Démarrage de Flask..."
    cd flask_app
    python3 app.py
elif [ -f "fastapi_app/main.py" ]; then
    echo "🚀 Démarrage de FastAPI..."
    cd fastapi_app
    uvicorn main:app --host 0.0.0.0 --port 8000
else
    echo "📦 Mode CLI IA : Terminal IA DZROUGE"
    bash termux_manager.sh || echo "⚠️ Aucun script CLI trouvé."
fi
