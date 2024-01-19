FROM python:3.8

RUN git clone https://github.com/natehenn/meioc.git /meioc
RUN pip install -r /meioc/requirements.txt
RUN mkdir -p /tmp
WORKDIR /tmp

ENTRYPOINT ["python3", "/meioc/meioc.py"]
