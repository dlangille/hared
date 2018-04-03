# hared
Destined to be a FreeBSD port

Based on https://github.com/jpmens/hared-hare

When building, I see:

```
root@111amd64-working:/wrkdirs/usr/ports/sysutils/hared/work/src/hared/daemon # /usr/local/bin/go build hared.go
hared.go:15:5: cannot find package "github.com/eclipse/paho.mqtt.golang" in any of:
	/usr/local/go/src/github.com/eclipse/paho.mqtt.golang (from $GOROOT)
	/root/go/src/github.com/eclipse/paho.mqtt.golang (from $GOPATH)
hared.go:14:5: cannot find package "gopkg.in/gcfg.v1" in any of:
	/usr/local/go/src/gopkg.in/gcfg.v1 (from $GOROOT)
	/root/go/src/gopkg.in/gcfg.v1 (from $GOPATH)
```

I'm stuck...
