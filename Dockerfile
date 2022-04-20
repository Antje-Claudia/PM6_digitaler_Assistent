FROM python:3.7-slim

RUN python -m pip install rasa

WORKDIR /app
COPY . .

RUN rasa train nlu

# set the user to run, don't run as root
USER 1001

# set the entrypoint for interactive shells
ENTRYPOINT ["rasa"]

# vommand to run whenb container is called to run
CMD ["run", "--enable-api", "--port", "8080"]