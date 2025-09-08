FROM python:3.13.7-slim-trixie

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt && mkdir -p /app/allure-results

CMD ["python3", "-m", "pytest", "--alluredir=/app/allure-results", "tests/"]
