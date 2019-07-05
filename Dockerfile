# Dockerfile for ca-project
FROM python:3

#  Dependancies
COPY Requirements.txt
COPY . /ca-project

#Set-up Python Requirements
RUN pip install -r requirements.txt

#Exevute Application
# RUN python run.py
EXPOSE 5000 
CMD [ "python", "./run.py" ]
RUN rm -rf /var/lib/apt/lists/*