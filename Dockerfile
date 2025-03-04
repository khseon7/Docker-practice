FROM python:3.11.6-slim

ENV PYTHONPATH=1

WORKDIR .

# 필수 패키지 설치 (git, gcc, python3-dev)
RUN apt-get update && apt-get install -y git gcc python3-dev
RUN pip install django

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]