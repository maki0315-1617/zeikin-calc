FROM nginx:alpine

# 静的ファイルを nginx の公開ディレクトリにコピー
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# ポート 3000 で公開（Render のデフォルト）
EXPOSE 3000

# nginx をフォアグラウンドで実行
CMD ["sh", "-c", "sed -i 's/listen 80/listen 3000/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
