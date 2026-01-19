# ---------- ベースイメージ ----------
FROM tomcat:10.1-jdk17

# ---------- 既存アプリ削除 ----------
RUN rm -rf /usr/local/tomcat/webapps/*

# ---------- Mavenで生成したWARをROOTとして配置 ----------
# target 配下の WAR を Tomcat の ROOT アプリとして配置
COPY target/smartphone-helper-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# ---------- 使用ポート ----------
EXPOSE 8080

# ---------- Tomcat起動 ----------
CMD ["catalina.sh", "run"]
