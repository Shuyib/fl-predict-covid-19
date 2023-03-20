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

# Copy the current directory contents into the container at /app
COPY . /app

# combine run statements into single statement to reduce image size
RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --deploy --system && \
    rm -rf /root/.cache

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Create mountpoint
VOLUME /app

# Run jupyter when container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]



