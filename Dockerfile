FROM civisanalytics/civis-jupyter-python3


RUN mkdir -p /app

WORKDIR /app
COPY . .

RUN apt-get update && \
    apt-get install -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888 22
CMD jupyter notebook --NotebookApp.token='' \
	 --ip=0.0.0.0 --port=8888 --allow-root
