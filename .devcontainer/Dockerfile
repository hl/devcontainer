FROM hexpm/elixir:1.15.7-erlang-26.1.2-debian-buster-20231009

RUN apt update && apt upgrade -y 
RUN apt install -y git build-essential inotify-tools wget

RUN install -dm 755 /etc/apt/keyrings

RUN wget -qO - https://rtx.pub/gpg-key.pub | gpg --dearmor | tee /etc/apt/keyrings/rtx-archive-keyring.gpg 1> /dev/null
RUN echo "deb [signed-by=/etc/apt/keyrings/rtx-archive-keyring.gpg arch=amd64] https://rtx.pub/deb stable main" | tee /etc/apt/sources.list.d/rtx.list

RUN apt update && apt install -y rtx
