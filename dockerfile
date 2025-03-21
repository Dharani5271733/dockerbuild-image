FROM python:3.9-alpine
RUN adduser -D -u 8899 myuser
WORKDIR /app
COPY app.py .
RUN pip install flask 
USER 8899
CMD ["python","app.py"]
