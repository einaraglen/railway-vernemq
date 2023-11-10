FROM vernemq/vernemq

COPY vernemq.conf /etc/vernemq/vernemq.conf

EXPOSE 1883

CMD ["start_vernemq"]