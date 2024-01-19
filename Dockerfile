FROM python:3.8

RUN git clone https://github.com/natehenn/meioc.git /meioc
WORKDIR /meioc
RUN pip install -r requirements.txt
RUN mkdir -p /tmp

ENTRYPOINT ["python3", "meioc.py"]
