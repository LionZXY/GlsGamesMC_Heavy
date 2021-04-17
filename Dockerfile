FROM lionzxy/multiarch_java

WORKDIR /app/

COPY . /app/

CMD /app/ServerStart.sh
