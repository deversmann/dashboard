FROM arm32v7/ruby:2.7.6-alpine3.15

RUN apk add --update --no-cache build-base openssl-dev tzdata nodejs && \
    gem update --system && \
    gem install bundler smashing

RUN mkdir /smashing && \
    smashing new smashing && \
    cd /smashing && \
    bundle && \
    ln -s /smashing/dashboards /dashboards && \
    ln -s /smashing/jobs /jobs && \
    ln -s /smashing/assets /assets && \
    ln -s /smashing/lib /lib-smashing && \
    ln -s /smashing/public /public && \
    ln -s /smashing/widgets /widgets && \
    mkdir /smashing/config && \
    mv /smashing/config.ru /smashing/config/config.ru && \
    ln -s /smashing/config/config.ru /smashing/config.ru && \
    ln -s /smashing/config /config

COPY run.sh /

RUN chmod 744 /run.sh

VOLUME ["/dashboards", "/jobs", "/lib-smashing", "/config", "/public", "/widgets", "/assets"]

ENV PORT 3030
EXPOSE $PORT
WORKDIR /smashing

CMD ["/run.sh"]
