FROM python:3.9
WORKDIR /app

COPY requirements.txt /app/
RUN dos2unix bash.sh && pip3 install --no-cache-dir -r requirements.txt

COPY . /app
CMD flask run -h 0.0.0.0 -p 10000 & python3 main.py
