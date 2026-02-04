

FROM python:3.10.4-slim-buster
# Update the package lists and upgrade the existing packages

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git build-essential tzdata ffmpeg libssl-dev libffi-dev &
# Copy the requirements file into the image

COPY requirements.txt .
# Install Python packages specified in requirements.txt
RUN pip install --no-cache-dir -U pip wheel==0.45.1

# Set the working directory inside the container
WORKDIR /app


COPY . .
# change port -p to 10000 if not works
# A dummy command to keep the container running
# Start application

CMD flask run -h 0.0.0.0 -p 8000 & python3 -m ggn











