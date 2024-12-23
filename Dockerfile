FROM Ubuntu 

RUN apt-get update
RUN apt-get install python

RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/appy.py flask run 


#Command to Build Docker Image
# docker build Dockerfile -t avik/myapp
# or docker build .
