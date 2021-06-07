FROM shosoar/alpine-python-opencv
MAINTAINER Abdul Rehman


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE  80

CMD [ "python", "./abdp3.py" ]