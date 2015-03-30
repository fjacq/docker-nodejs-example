# docker-nodejs-example

Showcase of two docker containers :

- linked containers : 1 nginx and 1 nodejs application
- file-wached : a modification on source code will trigger a restart of containers

```
     ----------       -------------
--> | nginx:80 | --> | nodejs:9000 |
     ----------       -------------
```

### Prerequisites

- OSX (/Linux)
- [boot2docker](http://boot2docker.io/) installed (if OSX)
- [docker-compose](https://docs.docker.com/compose/)
- [nodejs](https://nodejs.org/) and [nodemon](https://github.com/remy/nodemon) globally installed (`npm install -g nodemon`)

### Instalation steps

1/ clone current repo :
```shell
git clone https://github.com/slyg/docker-nodejs-example
```

2/ install webapp's volume dependencies (mainly express 4) :
```shell
cd webapp && npm install
```

3/ create and run stack
```shell
cd .. && sh startup.sh
```
