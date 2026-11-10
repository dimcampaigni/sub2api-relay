FROM weishaw/sub2api:latest

# Render 免费版无持久磁盘：把配置烤进镜像，每次启动都在
# Sub2API 用 DATA_DIR 定位 config.yaml 与 .installed 锁文件
USER root
COPY config.yaml /app/seed/config.yaml
COPY installed.lock /app/seed/.installed
RUN chown -R sub2api:sub2api /app/seed 2>/dev/null || true

ENV DATA_DIR=/app/seed
