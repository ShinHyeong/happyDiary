FROM civisanalytics/civis-jupyter-python3

COPY ./OneDrive /root/work/OneDrive
WORKDIR /root/work

RUN apt-get -y -qq update && \
     conda install -y pytorch-cpu torchvision-cpu -c pytorch
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888 22
CMD jupyter notebook --NotebookApp.token='' \
	 --ip=0.0.0.0 --port=8888 --allow-root
