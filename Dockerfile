# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and the dataset into the container
COPY Code.py paragraphs.txt /app/

# Install any needed dependencies
RUN pip install nltk

# Download NLTK data including the Punkt tokenizer
RUN python -m nltk.downloader punkt stopwords

# Run the Python script when the container launches
CMD ["python", "Code.py"]
