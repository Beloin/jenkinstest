FROM python:3.9.1

WORKDIR flask-app
COPY main.py main.py

RUN apt-get update && apt-get install

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000
ENV FLASK_APP=main.pu

ENTRYPOINT ["flask run --host=0.0.0.0"]

