FROM python:3.7-slim

RUN python -m pip install rasa

WORKDIR /app
ENV HOME=/app
COPY . .

# train a new rasa model
RUN rasa train nlu

# set the user to run, don't run as root
USER 1001

# set the entrypoint for interactive shells
ENTRYPOINT ["rasa"]

# command to run when container is called to run (not in the official RASA container)
CMD ["run", "--enable-api", "--port", "8080"]