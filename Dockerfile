

FROM python:3.11-slim-bookworm

ENV TZ=Asia/Dhaka
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git build-essential tzdata ffmpeg libssl-dev libffi-dev && \
    ln -snf "/usr/share/zoneinfo/$TZ" /etc/localtime && echo "$TZ" > /etc/timezone && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -U pip wheel==0.45.1

# Install Python packages specified in requirements.txt
RUN pip3 install wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt
# Set the working directory inside the container

WORKDIR /app

COPY requirements.txt /app




# Copy the entire application code into the image
COPY . .
# change port -p to 10000 if not works
# A dummy command to keep the container running
# Start application
CMD gunicorn app:app & python3 
CMD flask run -h 0.0.0.0 -p 8000 & python3 -m ggn


# MyselfNeon
# Don't Remove Credit 🥺
# Telegram Channel @NeonFiles


