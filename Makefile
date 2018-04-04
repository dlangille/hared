# $FreeBSD$

PORTNAME=	hared
DISTVERSION=	1.0-41
DISTVERSIONSUFFIX=	-ge17cdc6
CATEGORIES=	sysutils

MAINTAINER=	dvl@FreeBSD.org
COMMENT=	Small Go server for inserting notications into mtqq

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go
USE_GITHUB=	yes
# GH_ACCOUNT=	jpmens
# GH_PROJECT=	hared-hare

GH_TUPLE=	jpmens:hared-hare:e17cdc6 \
		eclipse:paho.mqtt.golang:d4f545e:eclipse/paho.mqtt.golang \
		golang:net:9dfe398:net/src/golang.org/x/net \
		gorilla:websocket:7a8dacf:websocket/src/github.com/gorilla/websocket \
		go-gcfg:gcfg:f02745a:gcfg/src/gopkg.in/gcfg.v1

ETCDIR=		${PREFIX}/etc

GO_PKGNAME=	github.com/${PORTNAME}/

do-build:
	(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} CGO_ENABLED=0 ${GO_CMD} build -o ${PORTNAME} ${GO_WRKSRC}/hared-hare-e17cdc6/daemon/hared.go)

#do-install:
#	${INSTALL_PROGRAM} ${GO_WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/hare                     ${STAGEDIR}${PREFIX}/bin
#	${INSTALL_DATA}    ${WRKSRC}/daemon/hared.ini.example ${STAGEDIR}${PREFIX}/etc/hared.ini.sample

.include <bsd.port.mk>
