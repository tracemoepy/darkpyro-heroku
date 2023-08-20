FROM python:3.9-slim-buster
ENV HOSTNAME DarkPyro

RUN apt update
RUN apt install -y \
                apt-utils \
                git \
                neofetch

RUN git clone \
    https://github.com/2R-Dark-Kanger-Pro/DarkPyro-REV \
    /home/darkpyro

WORKDIR /home/darkpyro
ENV PIP_ROOT_USER_ACTION=ignore
RUN pip3 install -r req*txt

CMD ["python3", "-m", "ProjectDark"]