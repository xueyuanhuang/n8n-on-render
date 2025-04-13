FROM n8nio/n8n:latest

WORKDIR /data

# 复制你刚刚创建的启动脚本进镜像
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_PASSWORD}
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-yourname.onrender.com

EXPOSE 5678

# 改为执行我们自己的脚本
CMD ["/start.sh"]
