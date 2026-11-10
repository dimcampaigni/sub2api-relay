FROM weishaw/sub2api:latest
# 把预置配置烤进镜像，规避 Render 免费版临时文件系统
COPY config.yaml /app/data/config.yaml
COPY installed.lock /app/data/.installed
