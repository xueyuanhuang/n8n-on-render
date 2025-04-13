FROM n8nio/n8n:latest
WORKDIR /data

# 推荐用 COPY --chmod，一行解决权限问题
COPY --chmod=755 start.sh /data/start.sh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_PASSWORD}
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-yourname.onrender.com

EXPOSE 5678
CMD ["/data/start.sh"]
