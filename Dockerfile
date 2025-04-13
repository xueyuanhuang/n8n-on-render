FROM n8nio/n8n:latest

WORKDIR /data

# 把脚本复制进 /data 下（你是这个目录的拥有者）
COPY start.sh /data/start.sh

# 给脚本执行权限
RUN chmod +x /data/start.sh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_PASSWORD}
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-xueyuanhuang.onrender.com

EXPOSE 5678

# 改成执行 /data/start.sh
CMD ["/data/start.sh"]
