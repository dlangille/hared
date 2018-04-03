# $FreeBSD: head/sysutils/py-hared/Makefile 465754 2018-03-27 21:06:15Z dvl $

PORTNAME=	hared
DISTVERSION=	1.0-41
DISTVERSIONSUFFIX=	-ge17cdc6
CATEGORIES=	sysutils

MAINTAINER=	dvl@FreeBSD.org
COMMENT=	Small Go server for inserting notications into mtqq

USE_GITHUB=	yes
GH_ACCOUNT=	jpmens
GH_PROJECT=	hared-hare

GH_TUPLE=	eclipse:paho.mqtt.golang:d4f545e:paho_mqtt_golang/src/github.com/eclipse/paho.mqtt.golang

LICENSE=	MIT

ETCDIR=		${PREFIX}/etc

USES=		go

GO_PKGNAME=	hared/daemon


do-build:
	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} CGO_ENABLED=0 ${GO_CMD} build -o ${PORTNAME} ./cmd/${GH_PROJECT})

do-install:
	${INSTALL_PROGRAM} ${GO_WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/hare                     ${STAGEDIR}${PREFIX}/bin
#	${INSTALL_DATA}    ${WRKSRC}/daemon/hared.ini.example ${STAGEDIR}${PREFIX}/etc/hared.ini.sample

.include <bsd.port.mk>
