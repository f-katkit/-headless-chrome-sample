### build

```
docker build -t fkatkit/headless-chrome-sample:latest .
```

### run
#### linux

```
# get screen shot
docker run -v $(pwd):/root/src -it --rm fkatkit/headless-chrome-sample:latest python /root/sample_selene.py

# run /bin/bash
docker run -v $(pwd):/root/src -it --rm fkatkit/headless-chrome-sample:latest /bin/bash
```

#### Windows

```
# get screen shot
docker run -v ${PWD}:/root/src --rm -it fkatkit/headless-chrome-sample:latest python /root/sample_selene.py

# run /bin/bash
docker run -v ${PWD}:/root/src --rm -it fkatkit/headless-chrome-sample:latest /bin/bash
```
