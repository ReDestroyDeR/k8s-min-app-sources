#bin/sh
PVERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
mvn clean package -f pom.xml
mkdir -p ./target/dependency;
cd ./target/dependency || exit;
jar -xf ../*.jar
sudo docker build -t redestroyder/k8s_minimal_app:"$PVERSION" ../../
