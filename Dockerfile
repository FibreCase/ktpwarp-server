# 使用 Node.js 20 镜像
FROM node:20

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app

# 安装依赖，pnmp换源淘宝源，海外部署请删除
RUN corepack enable && pnpm config set registry https://registry.npmmirror.com && pnpm install

# 暴露端口
EXPOSE 3000

# 启动项目
CMD ["sh", "-c", "pnpm start && tail -f /dev/null"]