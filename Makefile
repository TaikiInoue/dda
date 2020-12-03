docker_build:
		docker build -t dda:latest -f docker/Dockerfile .

docker_run:
		docker run --runtime nvidia -it --rm \
			--network host \
			--volume $(PWD):/app/dda \
			--volume /home/inoue/.ssh:/tmp/.ssh:ro \
			--volume /home/inoue/.zshrc:/tmp/.zshrc:ro \
			--volume /home/inoue/.tmux.conf:/tmp/.tmux.conf:ro \
			--workdir /app/dda \
			--name dda \
			--hostname dda \
			dda:latest
