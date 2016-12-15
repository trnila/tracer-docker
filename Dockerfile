FROM dorowu/ubuntu-desktop-lxde-vnc:latest
RUN apt-get update && apt-get install -y curl git python-virtualenv make gcc g++ libunwind8-dev graphviz python3-pyqt5
RUN cd /home/ubuntu && curl https://raw.githubusercontent.com/trnila/tracer/master/bootstrap.sh | sh
