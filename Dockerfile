FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    lsb-release \
    procps \
    coreutils \
    bash

COPY system_info.sh /usr/local/bin/system_info.sh

RUN chmod +x /usr/local/bin/system_info.sh

CMD ["system_info.sh"]

