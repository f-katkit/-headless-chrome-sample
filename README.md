### build

```
docker build -t fkatkit/docker-crawl:1.0 .
```

### run
#### linux

```
docker run -d -v $(pwd):/root/images -it fkatkit/docker-crwal:1.0 /bin/bash
```

#### Windows

```
docker run -d -v ${PWD}:/root/src --rm -it docker-crawl:1.0 /bin/bash
```
