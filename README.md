# REQUIEM OWL 2 QL Reasoner (in a box)

## what
"REQUIEM (REsolution-based QUery rewrIting for Expressive Models) is a prototypical implementation of a query rewriting algorithm developed by Héctor Pérez-Urbina, Boris Motik, and Ian Horrocks."

## why
[Here](http://www.cs.ox.ac.uk/isg/tools/Requiem/) they say "Currently, REQUIEM can only be used with Eclipse: see Using REQUIEM for more details" but I don't use eclipse and I wanted to try this thing out. So I put it in a docker container. And I wasn't especially careful about it. I want to see if this thing is useful first.

## how
```
docker build -t justin2004/pomify-requiem .
```

```
docker run --rm -it -v `pwd`:/mnt justin2004/pomify-requiem ./query.txt file:///mnt/my1.ttl out.txt N
```

- where:
    - query.txt is a datalog query
    - my1.ttl is an ontology expressed in OWL

look for `out.txt*` files -- which are the re-written queries (that take the ontology into account) 




## notes

"REQUIEM is open-source and released under LGPL. All components and source code is included in the downloaded zip file."
http://www.cs.ox.ac.uk/isg/tools/Requiem

http://www.cs.ox.ac.uk/isg/tools/Requiem/using.html
