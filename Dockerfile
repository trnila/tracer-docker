FROM dorowu/ubuntu-desktop-lxde-vnc:latest
RUN sed -i s/1024x768/1920x1080/g /etc/supervisor/conf.d/supervisord.conf
RUN apt-get update && apt-get install -y curl git python3-dev python3-pip make gcc g++ libunwind8-dev graphviz python3-pyqt5
RUN pip3 install git+https://github.com/trnila/tracer.git@backtrace_extension && pip3 install git+https://github.com/trnila/tracer-gui.git@develop