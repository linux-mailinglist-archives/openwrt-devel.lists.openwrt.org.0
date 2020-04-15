Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B11A8FC9
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 02:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BxKDXoQ72kmz0akqj+vBoepiC2xSDU8xUpdJ0qKAJWU=; b=JxHt1TCSoyhuJP9X+ODXtYcVEd
	fNsJc7Wl90tdst8oPRCPsaqhWqsZqecuBpyPOefLHTzmhWCr4jnM7ZKaEmQZSO3stVZWJpnLfGYmS
	epktxfRFVmbiCvBtHNYVf8B3AVOTMp7Bb1vwtckQqEZyWUZvGvTZ8f8uJHe3mymrD5gTQmmS4SLc9
	RKSeC85XpQIAGs2rc9S/XXt7i1aB91UQ6Ci6ZRa06z4skpJiOr+1J3F1NkHuYW0E+bo8EcLanhX4T
	R90qQGCe7vh6WVsor7AvZ40sgSBS5KgCmW8ddcAAUXQG+s4JRy1wPW5vS7xqKaPANy5/cGgXO19oK
	QJffzJDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOW6P-0002rl-7N; Wed, 15 Apr 2020 00:40:29 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOW69-0001Z4-3J
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 00:40:17 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 32450C0003;
 Wed, 15 Apr 2020 00:40:03 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 14:39:48 -1000
Message-Id: <20200415003948.1128453-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408004640.884368-1-mail@aparcar.org>
References: <20200408004640.884368-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_174013_413041_8DC56DAB 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] scripts: add docker-run-rootfs.sh
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The script allows to run a OpenWrt x86/64 rootfs in no time. It is
possible to access the web interface and SSH via 192.168.1.1.

By using docker volume mounts you can easily share files/folders between
container and host, allowing ot use hosts tools to work on files
deployed in a running OpenWrt instance.

Additional parameters (like volumes) are passed to the `docker create`
command, an example for this below. When quiting the container via `C-d`
a "teardown" removes the container + created network.

    ./scripts/docker-run-rootfs.sh \
      -v $(pwd)/package/base-files/files/bin/sysupgrade-online:/bin/sysupgrade-online \
      -v $(pwd)/package/base-files/files/lib/upgrade/online.sh:/lib/upgrade/online.sh

Files and folders to share must be in 664 mode for "live" upgrades, see[0].

Aditionally it is possible to define "NETWORK_PREFIX" like "192.168.2"
(without final number) to change the created network the OpenWrt
container uses as LAN. This is to avoid network trouble (like if the
developer uses 192.168.1.x as upstream connection) or multiple container
should run in parralllel.

Network is disabled by default, enable it via --network or -n.

Using --prebuild or -p will download the OpenWrt image from docker hub.

[0]: https://forums.docker.com/t/modify-a-file-which-mount-as-a-data-volume-but-it-didnt-change-in-container/2813/14

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/docker-run-rootfs.sh | 103 +++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 scripts/docker-run-rootfs.sh

diff --git a/scripts/docker-run-rootfs.sh b/scripts/docker-run-rootfs.sh
new file mode 100644
index 0000000000..827ce37c61
--- /dev/null
+++ b/scripts/docker-run-rootfs.sh
@@ -0,0 +1,103 @@
+#!/bin/sh
+#   Copyright (C) 2020 Paul Spooren <mail@aparcar.org>
+
+set -e
+
+SELF="$0"
+ROOTFS_PATH="$(pwd)/bin/targets/x86/64/openwrt-x86-64-generic-rootfs.tar.gz"
+NETWORK_ENABLE="${NETWORK_ENABLE:-0}"
+NETWORK_PREFIX="${NETWORK_PREFIX:-192.168.1}"
+IMAGE_NAME="openwrt-rootfs:$NETWORK_PREFIX"
+NETWORK_NAME="none"
+
+die() {
+	echo "$1"
+	exit 1
+}
+
+usage() {
+	cat >&2 <<EOF
+Usage: $SELF [-h|--help]
+       $SELF
+         [--rootfs <rootfs>]
+         [-n|--network]
+         [-p|--prebuild]
+
+<rootfs> allows to specifiy a different path for the rootfs.
+<network> enables network access based on <NETWORK_PREFIX>
+
+A "NETWORK_PREFIX" like "192.168.2" (without final number) can be used to
+change the created network the OpenWrt container uses as LAN. This is to avoid
+network trouble (like if the developer uses 192.168.1.x as upstream connection)
+or multiple container should run in parralllel.
+
+<prebuild> uses the official docker images openwrtorg/rootfs:latest
+	-> changes to <NETWORK_PREFIX> are ignored
+EOF
+}
+
+parse_args() {
+	while [ "$#" -gt 0 ]; do
+		case "$1" in
+			--rootfs) ROOTFS_PATH="$2"; shift 2 ;;
+			--network|-n) NETWORK_ENABLE=1; shift ;;
+			--prebuild|-p) PREBUILD=1; shift ;;
+			--help|-h)
+				usage
+				exit 0
+				;;
+			*)
+				DOCKER_EXTRA="$DOCKER_EXTRA $1"
+				shift
+				;;
+		esac
+	done
+}
+
+parse_args "$@"
+
+[ -f "$ROOTFS_PATH" ] || die "Couldn't find rootfs at $ROOTFS_PATH"
+
+if [ -z "$PREBUILD" ]; then
+	DOCKERFILE="$(mktemp -p $(dirname $ROOTFS_PATH))"
+	cat <<EOT > "$DOCKERFILE"
+	FROM scratch
+	ADD $(basename $ROOTFS_PATH) /
+	RUN sed 's/pi_ip="192.168.1.1/pi_ip="$NETWORK_PREFIX.1"/'
+	RUN sed 's/pi_broadcast="192.168.1.255/pi_broadcast="$NETWORK_PREFIX.255"/'
+	RUN echo "console::askfirst:/usr/libexec/login.sh" >> /etc/inittab
+	EXPOSE 22 80 443
+	USER root
+	CMD ["/sbin/init"]
+EOT
+	docker build -t "$IMAGE_NAME" -f "$DOCKERFILE" "$(dirname $ROOTFS_PATH)"
+	rm "$DOCKERFILE"
+else
+	IMAGE_NAME="openwrtorg/rootfs:latest"
+	docker pull "$IMAGE_NAME"
+fi
+
+echo "[*] Build: $ROOTFS_PATH"
+
+if [ "$NETWORK_ENABLE" = 1 ]; then
+	NETWORK_NAME="openwrt-lan-$NETWORK_PREFIX"
+	LAN_IP="$NETWORK_PREFIX.1"
+	if [ -z "$(docker network ls | grep $NETWORK_NAME)" ]; then
+		docker network create \
+		  --driver=bridge \
+		  --subnet="$NETWORK_PREFIX.0/24" \
+		  --ip-range="$NETWORK_PREFIX.0/24" \
+		  --gateway="$NETWORK_PREFIX.2" \
+		  "$NETWORK_NAME"
+		echo "[*] Created $NETWORK_NAME network "
+	fi
+fi
+
+docker run -it --rm --network="$NETWORK_NAME" --ip="$LAN_IP" \
+	--name openwrt-docker $DOCKER_EXTRA "$IMAGE_NAME"
+echo "[*] Created $IMAGE_NAME"
+
+if [ "$NETWORK_ENABLE" = 1 ]; then
+	docker network rm "$NETWORK_NAME"
+	echo "[*] Cleaned up network"
+fi
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
