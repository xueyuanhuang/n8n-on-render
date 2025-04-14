FROM n8nio/n8n:latest
WORKDIR /data

# 保证拷贝成功
COPY start.sh /data/start.sh

# 推荐用 COPY --chmod，一行解决权限问题
# COPY --chmod=755 start.sh /data/start.sh

# 可选：查看文件是否存在
RUN ls -al /data

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_PASSWORD}
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-yourname.onrender.com

EXPOSE 5678
CMD ["/data/start.sh"]
