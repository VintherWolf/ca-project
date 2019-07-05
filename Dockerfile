# Dockerfile for ca-project
FROM python:3
ADD Requirements.txt
RUN pip install -r requirements.txt
ADD . /ca-project
RUN python run.py
EXPOSE 5000
CMD run.py --port 5000
RUN rm -rf /var/lib/apt/lists/*