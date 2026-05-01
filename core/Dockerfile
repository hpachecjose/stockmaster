FROM ubuntu:22.04
RUN apt-get update && apt-get install -y \
    gnucobol \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app/core
CMD ["tail", "-f", "/dev/null"]
