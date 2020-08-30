FROM python:3.7-alpine3.11
COPY script.py /script.py
COPY server.py /server.py
COPY secrets.py /secrets.py
COPY Procfile /Procfile

# RUN echo "* * * * * echo hello" | crontab -
RUN pip install bs4 requests
RUN pip install praw

RUN echo "5 5-21/1 * * * python /script.py" | crontab -

CMD ["crond","-f"]