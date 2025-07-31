FROM python:3.14.0rc1-alpine

WORKDIR /src

COPY . ./

RUN pip install pipenv && pipenv install --deploy --ignore-pipfile

ENTRYPOINT ["pipenv", "run", "python", "smsboom.py"]
