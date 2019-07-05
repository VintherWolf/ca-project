# Dockerfile for ca-project
FROM python:3

#  Dependancies
COPY requirements.txt
COPY . /ca-project
WORKDIR /ca-project

#Set-up Python Requirements
RUN pip install -r requirements.txt

#Exevute Application
# RUN python run.py
EXPOSE 5000 
ENTRYPOINT ["python"]
CMD [ "run.py" ]
RUN rm -rf /var/lib/apt/lists/*