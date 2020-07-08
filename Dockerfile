FROM debian
RUN apt-get update && apt-get install -y \
  wakeonlan \
  cron \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY addcronjob.sh .
COPY wakeup.sh .
RUN chmod 755 *.sh
RUN addcronjob.sh
CMD [ "bash" ]
