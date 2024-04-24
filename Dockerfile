#using python runtime for code 
FROM python:3.8-slim

#set working dir
WORKDIR /app

#copy dataset and python script into container
COPY Code.py paragraphs.txt /app/

#install dependencies
RUN pip install nltk

RUN python -m nltk.downloader punkt stopwords

#run code.py whenever image runs
CMD ["python", "Code.py"]
