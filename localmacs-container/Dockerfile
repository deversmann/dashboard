FROM httpd:2.4

RUN apt-get update && \
	apt-get install -y nmap cron && \
	apt-get clean -y

COPY jobs.cron /etc/cron.d/jobs.cron
COPY run.sh scan.sh /

RUN chmod 744 /run.sh /scan.sh && \
    echo "* * * * * /scan.sh" | crontab -

CMD ["/run.sh"]