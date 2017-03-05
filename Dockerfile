FROM erlang

RUN    set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y emacs-nox \
    && rm -rf /var/lib/apt/lists \
    && mkdir /project

WORKDIR "/project"

CMD ["emacs"]
