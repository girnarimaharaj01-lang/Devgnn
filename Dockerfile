# Don't Remove Credit @VJ_Bots
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD gunicorn app:app & python3 bot.py


# Copy the entire application code into the image
COPY . .
# change port -p to 10000 if not works
# A dummy command to keep the container running
CMD flask run -h 0.0.0.0 -p 8000 & python3 -m ggn



