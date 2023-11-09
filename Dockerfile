FROM vernemq/vernemq AS vernemq-builder

COPY vernemq.conf /etc/vernemq/vernemq.conf

CMD ["start_vernemq"]

FROM nginx:alpine

COPY --from=vernemq-builder /etc/vernemq/vernemq.conf /etc/vernemq/vernemq.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]