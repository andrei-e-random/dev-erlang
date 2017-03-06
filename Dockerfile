FROM erlang

RUN    set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y emacs-nox sudo \
    && rm -rf /var/lib/apt/lists \
    && adduser --disabled-password --gecos "" user \
    && echo 'user:pass' | chpasswd \
    && adduser user sudo \
    && adduser user users

USER user
WORKDIR "/project"

# TODO: Should I install the erlang docs as well?

CMD ["emacs"]
