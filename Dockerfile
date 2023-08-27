FROM 172.16.0.183:8085/repository/docker/python:3.6

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1docker 
RUN mkdir /app
WORKDIR /app
COPY ./requirements.txt ./requirements.txt
RUN apt-get update
RUN pip install -i https://pypi.iranrepo.ir/simple -r requirements.txt
COPY . .
RUN chmod u+x ./entrypoint.sh
CMD ["./entrypoint.sh"]


