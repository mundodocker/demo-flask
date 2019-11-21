FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN rm -f /app/requirements.txt
COPY . /app
ENTRYPOINT ["python"]
CMD ["app.py"]
