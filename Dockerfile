FROM tomcat:10.1-jdk17

# デフォルトアプリ削除
RUN rm -rf /usr/local/tomcat/webapps/*

# Webアプリをそのまま配置
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT/
COPY src/main/java /usr/local/tomcat/src/

EXPOSE 8080

CMD ["catalina.sh", "run"]
