FROM python:3
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py", "runserver", "54.241.237.197:8000", "0.0.0.0:8000"]
