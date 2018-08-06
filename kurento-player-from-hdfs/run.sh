KURENTO_SERVER=$1
PORT=8888
sudo mvn -U clean spring-boot:run -Dkms.url=ws://$KURENTO_SERVER:$PORT/kurento
