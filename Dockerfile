FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install -U pip && pip install -e .

CMD ["redbot", "--token", "${TOKEN}", "--prefix", "!", "default"]
