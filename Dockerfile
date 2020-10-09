FROM python:alpine3.12

ENV DB_USERNAME=""
ENV DB_PASSWORD=""
ENV DB_HOST=""
ENV DB_PORT=27017
ENV MAIL_USERNAME=""
ENV MAIL_PASSWORD=""

WORKDIR /app
COPY ./ /app/

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
