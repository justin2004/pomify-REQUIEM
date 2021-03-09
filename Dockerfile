FROM debian:10
RUN apt-get update && apt-get install -y maven
ADD . /app
WORKDIR /app
RUN mvn clean package
WORKDIR /mnt

# ENTRYPOINT java -cp "/app/target/artname-0.5.0.jar:/app/External JARs/*" org.oxford.comlab.requiem.RequiemTerminal
# ENTRYPOINT java -cp "/app/target/artname-0.5.0.jar:/app/External JARs/*"
# CMD org.oxford.comlab.requiem.RequiemTerminal ./query.txt file:///mnt/my1.ttl out.txt N
ENTRYPOINT ["/app/entry.sh"]

