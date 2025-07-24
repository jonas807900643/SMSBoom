FROM python:3.13.2-alpine

WORKDIR /src

COPY . ./

RUN pip install pipenv && pipenv install --deploy --ignore-pipfile

ENTRYPOINT ["pipenv", "run", "python", "smsboom.py"]
