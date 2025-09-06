FROM python:3.13.7-slim-trixie

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

CMD ["pytest", "tests/alerts_frame_windows_test.py"]
