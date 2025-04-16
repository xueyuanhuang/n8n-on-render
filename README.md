# n8n on Render 部署指南

详细教程请见我的文章：[n8n上云端：Render 部署实践](https://medium.com/@xue_yuanhuang/n8n%E4%B8%8A%E4%BA%91%E7%AB%AF-7b10abfd2199)

## 遇到的问题 & 注意事项

- Render 免费版的容器在 **15 分钟无访问** 后会自动休眠，导致：
  - Workflow 的定时器 / webhook 无法触发
  - Telegram 等服务无法连接 webhook

- 我使用了 UptimeRobot 来定时唤醒服务，但默认使用 `HEAD` 请求会被 Render 拦截

- 如果想使用 `GET` 请求保持唤醒，需要升级 UptimeRobot 至付费版

> 与其升级 UptimeRobot，不如直接 **升级 Render 到付费版**，不仅支持持续运行，还能获得更稳定的 webhook 支持。
