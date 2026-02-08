

FROM python:3.10.4-slim-buster
# Update the package lists and upgrade the existing packages

ENV TZ=Asia/Dhaka
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git build-essential tzdata ffmpeg libssl-dev libffi-dev && \
    ln -snf "/usr/share/zoneinfo/$TZ" /etc/localtime && echo "$TZ" > /etc/timezone && \
    rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the image
RUN pip3 install wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt
# Set the working directory inside the container
WORKDIR /app

COPY requirements.txt .
# Install Python packages specified in requirements.txt

# Set the working directory inside the container
WORKDIR /app


COPY . .
# change port -p to 10000 if not works
# A dummy command to keep the container running
# Start application

CMD flask run -h 0.0.0.0 -p 8000 & python3 -m ggn
















