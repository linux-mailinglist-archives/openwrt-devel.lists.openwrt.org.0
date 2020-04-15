Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544921A9280
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 07:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3zWEF/Hoq+tzVblg2eS9Y2rFTxawZPoxWInlJacwQc=; b=EZWekXzy1AGw2M
	li6EyjZAZeFYdE3Uj/Eb6CngDqUGlq6rixabNGhhOXJvPPSPBsaBYKh0OpRxwFgiCc2LHnI2mw2vc
	m0HT6ugaasINVC3h824JyB/lfLnrdqcfmggRcSWHh38RzeMRFiUYN+pMjqnnEQuyWh3wR1W5dSJ33
	DYvxHDP4arMntCHsNjQs2knv2hGlIxkJZvA1rfX3IvkAnOuzr3LL62agAsoOqn6Ax8VdM1yiHoxXS
	m+aPdBCDpazPDTqPbTlW8+IQhudA5lJfgforNRTC+AFTRqdRG2fnoNAv10ErrelKFfxCtALRKdjJR
	8mawe5kkG+kZKBJJ//yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOacV-0000dk-2P; Wed, 15 Apr 2020 05:29:55 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOacN-0000Tb-Hg
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 05:29:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id e5so3064117edq.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 22:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=84l/ZNIrfvskV6fZ2XrR4E4Pj7aLbM+bN3I7j88GFM4=;
 b=fsSX20jgmkhmJO3ff/Gekb1CN4ZyM2xk/SY3F0xQB35wEPJAexUtEga6OUg57ny3e3
 DUSkqNHx8zrzev2hnK3W+nZvFWlazg1wTnsQvIHEWJlk50XWeVm18652WZ3EyEU4r/Xb
 TssyzWd2qxFdoqabQD3Xb553X2P9m7hMh1VekAGavi9qsG1b/yjniXvFbcfnNihcQf9k
 xBvIr9HTUn61CTwGgw19I2m/eaivaNhUtcWzjD1KzJh2u6syx6zSOKPCykiy4PfbVdmf
 BhAEZwwbrpSELW3rIGIaqci8LNNEHQ1Th/btoDHyzN7iuYs7h7BIzm0U5AnizYTietWR
 upKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=84l/ZNIrfvskV6fZ2XrR4E4Pj7aLbM+bN3I7j88GFM4=;
 b=gvORc7Cm3QtUnqBLYV+R17Fxf2IrPXbifZU1p3RX2psGWL4KVIGtmKAPzd+Cc4E/EM
 y1qQQerFoTHllPKNCDRqi5lg+WIRtT3/tbKSU5Zu2ma6kPKUGVwrNIRo427Ru6F4Ayq3
 zddPsicS3XyjK+MqEDrDIzKylspyhX2YCzr4ZwdZ4v6DzNmx4M2q7ylAgVPVeOBxrdGM
 ZN+mhpIcPWgfiW3ge3AaWY4ej4ZOjuQSXVbJpiVccRb6RVHdMfD/u4V823rWlfivCbbW
 nBFMVM5QrqGZ4CZiVbyKGWZLqPKMY5njIXESSWUiwnXrw7X+SZFqDfENtmxNnZj/ST+u
 67Bg==
X-Gm-Message-State: AGi0PuaDpQ09C991RCnMjPuLrZbZTICEOsf3isrbIar4hFBMLQxFvI4p
 E2s2HDKUSRok6EqeQrNKa1JNyfuY3XbGBVYqOyw=
X-Google-Smtp-Source: APiQypLF+xMemT+Bxt08Ezm04wEq9lmwCALjO/mmrJah03smOf2zaWmcDmJggOHHbxB6WkwluIoiPZVVRpOomxiNZro=
X-Received: by 2002:a05:6402:543:: with SMTP id
 i3mr7005433edx.255.1586928584918; 
 Tue, 14 Apr 2020 22:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200408004640.884368-1-mail@aparcar.org>
 <20200415003948.1128453-1-mail@aparcar.org>
In-Reply-To: <20200415003948.1128453-1-mail@aparcar.org>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 15 Apr 2020 13:29:33 +0800
Message-ID: <CAECwjAhLS0biA8LRQMGUiUPexfH5W86PyWoT_1Ma--nNXz=xNg@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_222947_594383_81F80AAC 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul,

On Wed, 15 Apr 2020 at 08:40, Paul Spooren <mail@aparcar.org> wrote:
>
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
>       -v $(pwd)/package/base-files/files/bin/sysupgrade-online:/bin/sysupgrade-online \
>       -v $(pwd)/package/base-files/files/lib/upgrade/online.sh:/lib/upgrade/online.sh
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

Maybe past tense "prebuilt" as option name is better.

>
> [0]: https://forums.docker.com/t/modify-a-file-which-mount-as-a-data-volume-but-it-didnt-change-in-container/2813/14
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
> +       echo "$1"
> +       exit 1
> +}
> +
> +usage() {
> +       cat >&2 <<EOF
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
> +change the created network the OpenWrt container uses as LAN. This is to avoid
> +network trouble (like if the developer uses 192.168.1.x as upstream connection)
> +or multiple container should run in parralllel.
> +
> +<prebuild> uses the official docker images openwrtorg/rootfs:latest
> +       -> changes to <NETWORK_PREFIX> are ignored
> +EOF
> +}
> +
> +parse_args() {
> +       while [ "$#" -gt 0 ]; do
> +               case "$1" in
> +                       --rootfs) ROOTFS_PATH="$2"; shift 2 ;;
> +                       --network|-n) NETWORK_ENABLE=1; shift ;;
> +                       --prebuild|-p) PREBUILD=1; shift ;;
> +                       --help|-h)
> +                               usage
> +                               exit 0
> +                               ;;
> +                       *)
> +                               DOCKER_EXTRA="$DOCKER_EXTRA $1"
> +                               shift
> +                               ;;
> +               esac
> +       done
> +}
> +
> +parse_args "$@"
> +
> +[ -f "$ROOTFS_PATH" ] || die "Couldn't find rootfs at $ROOTFS_PATH"
> +
> +if [ -z "$PREBUILD" ]; then
> +       DOCKERFILE="$(mktemp -p $(dirname $ROOTFS_PATH))"

The "[ -f $ROOTFS_PATH" ]" check should only happen if we do not use
prebuilt image.

> +       cat <<EOT > "$DOCKERFILE"
> +       FROM scratch
> +       ADD $(basename $ROOTFS_PATH) /
> +       RUN sed 's/pi_ip="192.168.1.1/pi_ip="$NETWORK_PREFIX.1"/'
> +       RUN sed 's/pi_broadcast="192.168.1.255/pi_broadcast="$NETWORK_PREFIX.255"/'
> +       RUN echo "console::askfirst:/usr/libexec/login.sh" >> /etc/inittab
> +       EXPOSE 22 80 443
> +       USER root
> +       CMD ["/sbin/init"]
> +EOT

The formatting could be better with "<<-EOF", compraed to "<<EOF"

> +       docker build -t "$IMAGE_NAME" -f "$DOCKERFILE" "$(dirname $ROOTFS_PATH)"
> +       rm "$DOCKERFILE"
> +else
> +       IMAGE_NAME="openwrtorg/rootfs:latest"
> +       docker pull "$IMAGE_NAME"
> +fi
> +
> +echo "[*] Build: $ROOTFS_PATH"

The message should only appear when we use prebuilt image.  Better if
log messages were printed to stderr.  The same applies to "die"
message

> +
> +if [ "$NETWORK_ENABLE" = 1 ]; then
> +       NETWORK_NAME="openwrt-lan-$NETWORK_PREFIX"
> +       LAN_IP="$NETWORK_PREFIX.1"
> +       if [ -z "$(docker network ls | grep $NETWORK_NAME)" ]; then

"docker network inspect xx" is likely better.

> +               docker network create \
> +                 --driver=bridge \
> +                 --subnet="$NETWORK_PREFIX.0/24" \
> +                 --ip-range="$NETWORK_PREFIX.0/24" \
> +                 --gateway="$NETWORK_PREFIX.2" \
> +                 "$NETWORK_NAME"
> +               echo "[*] Created $NETWORK_NAME network "
> +       fi
> +fi
> +
> +docker run -it --rm --network="$NETWORK_NAME" --ip="$LAN_IP" \
> +       --name openwrt-docker $DOCKER_EXTRA "$IMAGE_NAME"
> +echo "[*] Created $IMAGE_NAME"

Should be "Created container openwrt-docker"?  Note that using a fixed
name disallows running multiple containers with this script as
suggested in the commit message.

> +
> +if [ "$NETWORK_ENABLE" = 1 ]; then
> +       docker network rm "$NETWORK_NAME"
> +       echo "[*] Cleaned up network"

Better if "$NETWORK_NAME" was included in log.

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
