# Base image: lightweight Python environment
FROM python:3.11-slim

# Working directory container ke andar
WORKDIR /app

# Requirements file copy karo pehle (caching optimize karne ke liye)
COPY requirements.txt .

# Dependencies install karo
RUN pip install --no-cache-dir -r requirements.txt

# Baaki poora application code copy karo
COPY . .

# Container ka port 5000 expose karo
EXPOSE 5000

# Container start hone par ye command chalegi
CMD ["python", "app.py"]
