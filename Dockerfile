FROM python:3.10

ENV FLASK_APP=server
LABEL version="0.1.0" author="user@name.com"

WORKDIR app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD flask run -h 0.0.0.0 -p 8080
