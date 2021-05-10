FROM pytorch/pytorch:1.2-cudoa10.0-cudnn7-devel

RUN mkdir -p /app

WORKDIR /app
COPY . .

RUN apt-get update && \
    apt-get install -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80
CMD ["python3", "main.py"]
