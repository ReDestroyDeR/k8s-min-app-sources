for /f %%i in ('call mvn -q --non-recursive "-Dexec.executable=cmd" "-Dexec.args=/C echo ${project.version}" "org.codehaus.mojo:exec-maven-plugin:1.3.1:exec"') do set PVERSION=%%i
call mvn clean package -f pom.xml
call mkdir .\target\dependency
call cd .\target\dependency\
call jar -xf ..\*.jar
call docker build -t redestroyder/k8s_minimal_app:%PVERSION% ..\..\