FROM n8nio/n8n:latest

# 设置工作目录
WORKDIR /data

# 设置环境变量（根据需要可改）
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_PASSWORD}
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-on-render.onrender.com

# 暴露端口
EXPOSE 5678

# 启动 n8n
CMD ["n8n"]
