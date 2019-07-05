# Dockerfile for ca-project
FROM python:3

#  Dependencies
COPY requirements.txt ca-project/requirements/
WORKDIR ca-project/requirements
RUN pip install -r requirements.txt

COPY . ca-project
WORKDIR ca-project

#Execute Application
EXPOSE 5000 
ENTRYPOINT ["python"]
CMD [ "run.py" ]
RUN rm -rf /var/lib/apt/lists/*
