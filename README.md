## attempt to build this thing

### can anyone get this thing to build?

```
docker build -t justin2004/pomify-requiem .
```

```
docker run --net=host --rm -it -v `pwd`:/mnt -v req_m2:/root/.m2 justin2004/pomify-requiem mvn clean package
```

can anyone fix this:
```
[ERROR] /mnt/src/main/java/org/oxford/comlab/requiem/parser/ELHIOParser.java:[58,65] org.semanticweb.HermiT.Reasoner.Configuration is not public in org.semanticweb.HermiT.Reasoner; cannot be accessed from outside package
```

found at:
http://www.cs.ox.ac.uk/isg/tools/Requiem/using.html
