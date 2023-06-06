FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin123@54.252.189.81:8081/repository/student-snapshot/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230606.022348-14.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
