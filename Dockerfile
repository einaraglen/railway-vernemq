FROM vernemq/vernemq

COPY vernemq.conf /etc/vernemq/vernemq.conf

# COPY certificates/ /etc/vernemq/certificates/

EXPOSE 1883

CMD ["start_vernemq"]