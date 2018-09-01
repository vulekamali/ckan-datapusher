FROM ubuntu:16.04
MAINTAINER OpenUp

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y python-dev \
                       python-pip \
                       build-essential \
                       libxslt1-dev \
                       libxml2-dev \
                       git \
                       libffi-dev
RUN pip install -e git+https://github.com/ckan/datapusher.git#egg=datapusher \
 && pip install gunicorn
RUN pip install -r /src/datapusher/requirements.txt

ADD datapusher_settings.py /datapusher_settings.py

EXPOSE 8800

CMD ["python", "/src/datapusher/datapusher/main.py", "/datapusher_settings.py"]
