## attempt to build this thing

### can anyone get this thing to build?

```
docker run --net=host --rm -it -v `pwd`:/mnt -v req_m2:/root/.m2 req mvn clean package
```
