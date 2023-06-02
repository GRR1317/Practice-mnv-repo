FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin123@13.55.67.217:8081/repository/student-snapshot/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230602.053027-1.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
