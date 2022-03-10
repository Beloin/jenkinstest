FROM python:3.9.1

WORKDIR flask-app
COPY main.py main.py

RUN apt-get update && apt-get install

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5212
ENV FLASK_APP=main.pu

ENTRYPOINT ["python", "main.py"]

