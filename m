Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE7D1A8FEB
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 02:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L/lQST8NWW1cnI1YSwMAN7Zd6Qecu850adqEm8lyoTI=; b=CnuXuT8Oz5CGIFogV+Jtsn618o
	MKrFMqrRctkEn+bK+8jiSPMO5DletK5fZB2TqUz2ZxTmkpI7QC0OfW/RVxMYI+icY7zLlbCY6rHNb
	vqSdMcv9qTMeB85ZVwX4uxjbxKRxgZ0C2eGRZPgFSqj0TrTU4D2AKAZBCkwXvtz7KwjonUYpr+GgY
	n812bdNPMemmPwY04CQ8+7ILmMyIwHoKhVxW29WtRWj5xx8XQIJD5YoLzuXGW5dfJvT4LiN2tVwqt
	kX8ZEYHmMzYpiK93QStUglWhSDebkPcGDpcFPMTWH0xUXGMV+/xiM9riXFIjfXwhAR0nAHNuyuAHa
	0L9oSMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWJi-0001h5-QA; Wed, 15 Apr 2020 00:54:14 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWJb-0001gQ-Tj
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 00:54:09 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1A418FF804
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 00:54:02 +0000 (UTC)
Message-ID: <23e11c8cebc24e585bbf59109914067108323a33.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 14:53:57 -1000
In-Reply-To: <20200415003948.1128453-1-mail@aparcar.org>
References: <20200408004640.884368-1-mail@aparcar.org>
 <20200415003948.1128453-1-mail@aparcar.org>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_175408_233871_943FB38B 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] scripts: add docker-run-rootfs.sh
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

Forgot to annotate, the v2 adds a description of the NETWORK_PREFIX to the usage
message.

On Tue, 2020-04-14 at 14:39 -1000, Paul Spooren wrote:
> The script allows to run a OpenWrt x86/64 rootfs in no time. It is
> possible to access the web interface and SSH via 192.168.1.1.
> 
> By using docker volume mounts you can easily share files/folders between
> container and host, allowing ot use hosts tools to work on files
> deployed in a running OpenWrt instance.
> 
> Additional parameters (like volumes) are passed to the `docker create`
> command, an example for this below. When quiting the container via `C-d`
> a "teardown" removes the container + created network.
> 
>     ./scripts/docker-run-rootfs.sh \
>       -v $(pwd)/package/base-files/files/bin/sysupgrade-
> online:/bin/sysupgrade-online \
>       -v $(pwd)/package/base-
> files/files/lib/upgrade/online.sh:/lib/upgrade/online.sh
> 
> Files and folders to share must be in 664 mode for "live" upgrades, see[0].
> 
> Aditionally it is possible to define "NETWORK_PREFIX" like "192.168.2"
> (without final number) to change the created network the OpenWrt
> container uses as LAN. This is to avoid network trouble (like if the
> developer uses 192.168.1.x as upstream connection) or multiple container
> should run in parralllel.
> 
> Network is disabled by default, enable it via --network or -n.
> 
> Using --prebuild or -p will download the OpenWrt image from docker hub.
> 
> [0]: 
> https://forums.docker.com/t/modify-a-file-which-mount-as-a-data-volume-but-it-didnt-change-in-container/2813/14
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  scripts/docker-run-rootfs.sh | 103 +++++++++++++++++++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 scripts/docker-run-rootfs.sh
> 
> diff --git a/scripts/docker-run-rootfs.sh b/scripts/docker-run-rootfs.sh
> new file mode 100644
> index 0000000000..827ce37c61
> --- /dev/null
> +++ b/scripts/docker-run-rootfs.sh
> @@ -0,0 +1,103 @@
> +#!/bin/sh
> +#   Copyright (C) 2020 Paul Spooren <mail@aparcar.org>
> +
> +set -e
> +
> +SELF="$0"
> +ROOTFS_PATH="$(pwd)/bin/targets/x86/64/openwrt-x86-64-generic-rootfs.tar.gz"
> +NETWORK_ENABLE="${NETWORK_ENABLE:-0}"
> +NETWORK_PREFIX="${NETWORK_PREFIX:-192.168.1}"
> +IMAGE_NAME="openwrt-rootfs:$NETWORK_PREFIX"
> +NETWORK_NAME="none"
> +
> +die() {
> +	echo "$1"
> +	exit 1
> +}
> +
> +usage() {
> +	cat >&2 <<EOF
> +Usage: $SELF [-h|--help]
> +       $SELF
> +         [--rootfs <rootfs>]
> +         [-n|--network]
> +         [-p|--prebuild]
> +
> +<rootfs> allows to specifiy a different path for the rootfs.
> +<network> enables network access based on <NETWORK_PREFIX>
> +
> +A "NETWORK_PREFIX" like "192.168.2" (without final number) can be used to
> +change the created network the OpenWrt container uses as LAN. This is to
> avoid
> +network trouble (like if the developer uses 192.168.1.x as upstream
> connection)
> +or multiple container should run in parralllel.
> +
> +<prebuild> uses the official docker images openwrtorg/rootfs:latest
> +	-> changes to <NETWORK_PREFIX> are ignored
> +EOF
> +}
> +
> +parse_args() {
> +	while [ "$#" -gt 0 ]; do
> +		case "$1" in
> +			--rootfs) ROOTFS_PATH="$2"; shift 2 ;;
> +			--network|-n) NETWORK_ENABLE=1; shift ;;
> +			--prebuild|-p) PREBUILD=1; shift ;;
> +			--help|-h)
> +				usage
> +				exit 0
> +				;;
> +			*)
> +				DOCKER_EXTRA="$DOCKER_EXTRA $1"
> +				shift
> +				;;
> +		esac
> +	done
> +}
> +
> +parse_args "$@"
> +
> +[ -f "$ROOTFS_PATH" ] || die "Couldn't find rootfs at $ROOTFS_PATH"
> +
> +if [ -z "$PREBUILD" ]; then
> +	DOCKERFILE="$(mktemp -p $(dirname $ROOTFS_PATH))"
> +	cat <<EOT > "$DOCKERFILE"
> +	FROM scratch
> +	ADD $(basename $ROOTFS_PATH) /
> +	RUN sed 's/pi_ip="192.168.1.1/pi_ip="$NETWORK_PREFIX.1"/'
> +	RUN sed
> 's/pi_broadcast="192.168.1.255/pi_broadcast="$NETWORK_PREFIX.255"/'
> +	RUN echo "console::askfirst:/usr/libexec/login.sh" >> /etc/inittab
> +	EXPOSE 22 80 443
> +	USER root
> +	CMD ["/sbin/init"]
> +EOT
> +	docker build -t "$IMAGE_NAME" -f "$DOCKERFILE" "$(dirname $ROOTFS_PATH)"
> +	rm "$DOCKERFILE"
> +else
> +	IMAGE_NAME="openwrtorg/rootfs:latest"
> +	docker pull "$IMAGE_NAME"
> +fi
> +
> +echo "[*] Build: $ROOTFS_PATH"
> +
> +if [ "$NETWORK_ENABLE" = 1 ]; then
> +	NETWORK_NAME="openwrt-lan-$NETWORK_PREFIX"
> +	LAN_IP="$NETWORK_PREFIX.1"
> +	if [ -z "$(docker network ls | grep $NETWORK_NAME)" ]; then
> +		docker network create \
> +		  --driver=bridge \
> +		  --subnet="$NETWORK_PREFIX.0/24" \
> +		  --ip-range="$NETWORK_PREFIX.0/24" \
> +		  --gateway="$NETWORK_PREFIX.2" \
> +		  "$NETWORK_NAME"
> +		echo "[*] Created $NETWORK_NAME network "
> +	fi
> +fi
> +
> +docker run -it --rm --network="$NETWORK_NAME" --ip="$LAN_IP" \
> +	--name openwrt-docker $DOCKER_EXTRA "$IMAGE_NAME"
> +echo "[*] Created $IMAGE_NAME"
> +
> +if [ "$NETWORK_ENABLE" = 1 ]; then
> +	docker network rm "$NETWORK_NAME"
> +	echo "[*] Cleaned up network"
> +fi


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
