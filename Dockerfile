FROM tomcat:10.1-jdk17

# 既存アプリ削除
RUN rm -rf /usr/local/tomcat/webapps/*

# war を配置
COPY SmartphoneHelperApp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
