# hared
Destined to be a FreeBSD port

Based on https://github.com/jpmens/hared-hare

When building, I see:

```
=======================<phase: build          >============================
===>  Building for hared-1.0.41
can't load package: package hared/daemon/cmd/hared-hare: cannot find package "hared/daemon/cmd/hared-hare" in any of:
	/usr/local/go/src/hared/daemon/cmd/hared-hare (from $GOROOT)
	/wrkdirs/usr/ports/sysutils/hared/work/src/hared/daemon/cmd/hared-hare (from $GOPATH)
	/usr/local/share/go/src/hared/daemon/cmd/hared-hare
*** Error code 1

Stop.
make: stopped in /usr/ports/sysutils/hared

```

I'm stuck...

I took the build process from sysutils/phpfpm_exporter  ... I am not convinced it is proper.

If I try the instructions with the vendor code, I get:

```
root@111amd64-working:/wrkdirs/usr/ports/sysutils/hared/work/hared-hare-1.0-41-ge17cdc6/daemon # go build hared.go
hared.go:15:5: cannot find package "github.com/eclipse/paho.mqtt.golang" in any of:
	/usr/local/go/src/github.com/eclipse/paho.mqtt.golang (from $GOROOT)
	/root/go/src/github.com/eclipse/paho.mqtt.golang (from $GOPATH)
hared.go:14:5: cannot find package "gopkg.in/gcfg.v1" in any of:
	/usr/local/go/src/gopkg.in/gcfg.v1 (from $GOROOT)
	/root/go/src/gopkg.in/gcfg.v1 (from $GOPATH)
```

Running the testport, I see:

```
root@111amd64-working:/wrkdirs/usr/ports/sysutils/hared/work # la -l
total 20
drwxr-xr-x  4 nobody  wheel   8 Apr  4 01:06 ./
drwxr-xr-x  3 nobody  wheel   3 Apr  4 01:05 ../
-rw-r--r--  1 nobody  wheel   0 Apr  4 01:06 .configure_done.hared._usr_local
-rw-r--r--  1 nobody  wheel   0 Apr  4 01:05 .extract_done.hared._usr_local
-rw-r--r--  1 nobody  wheel   0 Apr  4 01:05 .patch_done.hared._usr_local
drwxr-xr-x  5 nobody  wheel  12 Apr  4 01:05 hared-hare-1.0-41-ge17cdc6/
lrwxr-xr-x  1 nobody  wheel  66 Apr  4 01:05 paho.mqtt.golang-d4f545e@ -> hared-hare-1.0-41-ge17cdc6/src/github.com/eclipse/paho.mqtt.golang
drwxr-xr-x  3 nobody  wheel   3 Apr  4 01:05 src/
```
