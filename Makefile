NAME=trnila/tracer

build:
	docker build -t $(NAME) .

run:
	docker run -i -t --security-opt seccomp=unconfined -p 6080:6080 $(NAME)
