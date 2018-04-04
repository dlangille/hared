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
