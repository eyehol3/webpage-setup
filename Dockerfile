FROM ubuntu
RUN apt update && apt install -y \
    wget \
    python3 \
    # ruby-full \
    # build-essential \
    # zlib1g-dev \
    git

RUN apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y docker-ce docker-ce-cli containerd.io

RUN curl -sS https://webinstall.dev/watchexec | bash && \
    export PATH="/root/.local/bin:$PATH" && \
    apt install -y daemon

# RUN cd ~ && curl -s "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

RUN ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime

COPY . .

CMD ["/bin/sh", "-c", "/root/.local/bin/watchexec -w ${SOURCE_DIR} -- sh /build.sh"]
