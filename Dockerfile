# Dockerfile for ca-project
FROM python:3

#  Dependencies
COPY . ca-project
WORKDIR ca-project
RUN pip install -r requirements.txt


#Execute Application
EXPOSE 5000 
ENTRYPOINT ["python"]
CMD [ "run.py" ]
RUN rm -rf /var/lib/apt/lists/*
