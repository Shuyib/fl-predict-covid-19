# Use latest Python runtime as a parent image
FROM python:3.9.12-slim-buster

# Meta-data
LABEL maintainer="Shuyib" \
      description="Docker Data Science workflow: Federated learning workflow to figure out if anonymous individuals have COVID."
      
# Set the working directory to /app
WORKDIR /app

# ensures that the python output is sent to the terminal without buffering
ENV PYTHONUNBUFFERED=TRUE

# Set the working directory to /app
WORKDIR /app

# ensures that the python output is sent to the terminal without buffering
ENV PYTHONUNBUFFERED=TRUE

# Copy the current directory contents into the container at /app
COPY . /app

# upgrade pip
RUN pip --no-cache-dir install --upgrade pip

# install pipenv
RUN pip install pipenv

# pip install
RUN pipenv install --deploy --system && \
    rm -rf /root/.cache

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Create mountpoint
VOLUME /app

# Run jupyter when container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]



