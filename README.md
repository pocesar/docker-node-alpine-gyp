# docker-node-alpine-gyp

Node alpine container for rebuilding stuff (when on windows host)

# Why?

When you `npm install` some module that has native bindings, it'll install the host version of the module.
This container helps with overwriting usually the `build` directory with a node alpine compatible native module.

In the example is argon2, if you try to use Windows Host and Docker Machine, it's a no-go

![console](https://github.com/pocesar/docker-node-alpine-gyp/blob/master/argon2.png)

# Usage

```
docker run -v /your/failing/node_modules/package/:/usr/src/app pocesar/node-alpine-gyp:6
# docker run -v /your/failing/node_modules/package/:/usr/src/app pocesar/node-alpine-gyp:7 
```

# License

MIT
