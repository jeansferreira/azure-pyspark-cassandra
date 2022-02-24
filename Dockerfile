FROM python:latest

LABEL Maintainer="jeansferreira@gmail.com"

WORKDIR /usr/app/src
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . ./
CMD ["python", "pyquickstart.py"]
