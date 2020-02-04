Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E99151A8C
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 13:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+eO+y5J+PitvaUyZjxjYBJ1+wmf1+5I3f69f+JZCmA=; b=FU681T1oURQbY6
	uhs3VeoGWVwlKcJgbXZRdhBfQ6qWZu+389OefEyjcNGGl1C7p1fHOddwLdsIZar8sKHKAyVkRmKBy
	0pRsKMVMn6o1h/rnI0a4Xbt5kfj/5c7l2KrLyMT9DuPiPhunBYoRqsvpGo3fS6Xrni71CkSZS6Gwo
	MNiZBVD5DS8ozi4kEjzYuCbLynOvAYIYn32wGvCAUHPN1uVR2uX6U+HAxevCJN74DM97jb3SX4U9v
	qPvryQRdnYo2oHDmP3myzTOt/Z83iEBb5CPTLCwUzdGyCyZ+KPY0XzBS8TZlfNz27IqAwREpd5TRn
	dXDEIVBBEBqeBPBJeIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxOG-00055j-Hf; Tue, 04 Feb 2020 12:33:16 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxNi-00052c-S5
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 12:32:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MHWvH-1ilSyr1IGH-00Dabb; Tue, 04
 Feb 2020 13:32:36 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200131142254.24953-1-pepe2k@gmail.com>
In-Reply-To: <20200131142254.24953-1-pepe2k@gmail.com>
Date: Tue, 4 Feb 2020 13:32:33 +0100
Message-ID: <00c301d5db57$2e4ccb00$8ae66100$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHsR+z/1rlEu6o/C4kkIc1H4dw3wqfeHW7w
Content-Language: de
X-Provags-ID: V03:K1:11Kj5iorxDGxM8WH2FuEq/EOMYHY6/oqYXxOS9hjNx/LNTMQBmN
 kAGoh9vh1r2wUirD1VQGW6TMFwkDKPKW27sEFhfcMB/Bxpv7u1vtIJE9RpvHDIShx1IAZFp
 dn3xPnmbu9CpB7f6yf3xPsc3oamRMUGTCjMrXYRt8xl70r1iYgK8RbjPLrKJs9RsnRLKLNc
 by5zZRCyEdATJbSvt2Y/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rpUDasIYv3A=:w7GJDKFoKQ+4ICJx2dk+jK
 h+80dlnkwhA4j7xjPAUvhcpqQwQIl60d7QlV3TC2yA6+QVIEaP3m2EFPRERRrrv9+ryJ4QFy2
 Z8kEtN4im/I+2kmqHuIj3tBrk9iplNf7r8rRXjtDI5qKz35X+Hn/dN1nEzFYovHW61/PdHMsQ
 J7QC7hx/ahhnfE7VR17ATovouHQ7Qh34BCJutXVDMBKLoSF9G5jCOtnwyXAKcF/gMbH1mQulm
 dN+dzrWTVbqWnyHk/jOnT0m0xy7N6zwufp6y2KzWBRtQzeq9wVvzgIW/uu7K8P2s4Fdq8ylhV
 Im3iher1JNimBwlVOdE4L+gj+qAVw5N3Emnmgx6nAGwdtUltJgNBljJWtsyI/CTiz5pQ+U7TN
 APKqfwmvwnrpIjkmnur2azurUCPzL6bL9CHABgn2VUfUdXNC5L2RVKN9RE2EUxWT0xvPdijV6
 eegkolwQvhOemp1lWxnyK7woS4Hgyv1wb0ULl9nwyKTjgpLADN9YSUKVqEQeCNYhcnbznW/pW
 sv5hg3IC8xStkL8cFuOS9CgShiAeDiz/9HySb7fsm0iWNwBvFMPslRjHEQ35G8qzODicgWoyL
 Bc/ADLZ1nPUE7k323pdUn2cJ288uxnlhCjcmQ5pIfophnkA8BmOZrULvDP6S0Q2hJ++Rmgz+O
 92RZeS27glC/6+8KCrVC82w3TYNPrrCsvBJhCdTpnFG+uMMkdAY5umvkrI9FtsFlZPkiY5E3t
 26B82beBpcf3OHpzhjnwwRKIU2inBIqZzwDQg1CRAz1EEt8hYdz/AVrDiO9vl8IwbHYZE176w
 MDatqd2Vs2bsZwX5Y5tQdR0L0jNnAON9IvvbYJ2fX1n0l7cIkeEfYfg0GZITzrEt/C4Y9+j
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043243_203715_C51AEA0B 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: diag: restore default
 trigger for 'boot' LED
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

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Freitag, 31. Januar 2020 15:23
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] base-files: diag: restore default trigger for
> 'boot' LED
> 
> For devices without a dedicated 'diag' LED, we use sometimes one of
> other LEDs for indicating at least 'boot', 'failsafe' and 'upgrade'
> stages. In some cases, at the same time these LEDs have defined default
> triggers in DTS using 'linux,default-trigger' property. Current 'diag'
> setup removes the trigger and turns off 'boot' LED after bootup.
> 
> One of the examples of such device is TP-Link TL-WR841N v14 (ramips)
> which uses 'wlan' LED with defined 'linux,default-trigger' for 'diag':
> 
> aliases {
> 	led-boot = &led_wlan;
> 	led-failsafe = &led_wlan;
> 	led-upgrade = &led_wlan;
> };
> 
> [...]
> 
> led_wlan: wlan {
> 	label = "tl-wr841n-v14:green:wlan";
> 	gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> 	linux,default-trigger = "phy0tpt";
> };
> 
> This patch extends 'diag.sh' and 'leds.sh' scripts to make sure default
> trigger defined in DTS is restored for 'diag' LED which isn't used for
> indicating 'running' stage.

I'm not really a fan of using LEDs for diag in that case at all, and I'd
actually prefer to have the aliases removed there (unless vendor also used
multiple purpose LEDs the same way).

But since we have these case in our code right now, I think this workaround is
necessary ATM.

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian

> 
> Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
> ---
>  package/base-files/Makefile                   |  2 +-
>  package/base-files/files/etc/diag.sh          |  2 ++
>  .../base-files/files/lib/functions/leds.sh    | 27 ++++++++++++++++---
>  3 files changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/package/base-files/Makefile b/package/base-files/Makefile
> index e389148d47..18325564dc 100644
> --- a/package/base-files/Makefile
> +++ b/package/base-files/Makefile
> @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
>  include $(INCLUDE_DIR)/feeds.mk
> 
>  PKG_NAME:=base-files
> -PKG_RELEASE:=213
> +PKG_RELEASE:=214
>  PKG_FLAGS:=nonshared
> 
>  PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-
> files/
> diff --git a/package/base-files/files/etc/diag.sh b/package/base-
> files/files/etc/diag.sh
> index 8eb36c6feb..37a8ec758e 100644
> --- a/package/base-files/files/etc/diag.sh
> +++ b/package/base-files/files/etc/diag.sh
> @@ -37,6 +37,8 @@ set_led_state() {
>  		;;
>  	done)
>  		status_led_off
> +		[ "$status_led" != "$running" ] && \
> +			status_led_restore_trigger "boot"
>  		[ -n "$running" ] && {
>  			status_led="$running"
>  			status_led_on
> diff --git a/package/base-files/files/lib/functions/leds.sh b/package/base-
> files/files/lib/functions/leds.sh
> index 8a1d21caef..43b2fe02ed 100644
> --- a/package/base-files/files/lib/functions/leds.sh
> +++ b/package/base-files/files/lib/functions/leds.sh
> @@ -1,16 +1,24 @@
>  #!/bin/sh
>  # Copyright (C) 2013 OpenWrt.org
> 
> -get_dt_led() {
> -	local label
> +get_dt_led_path() {
>  	local ledpath
>  	local basepath="/proc/device-tree"
>  	local nodepath="$basepath/aliases/led-$1"
> 
>  	[ -f "$nodepath" ] && ledpath=$(cat "$nodepath")
> +	[ -n "$ledpath" ] && ledpath="$basepath$ledpath"
> +
> +	echo "$ledpath"
> +}
> +
> +get_dt_led() {
> +	local label
> +	local ledpath=$(get_dt_led_path $1)
> +
>  	[ -n "$ledpath" ] && \
> -		label=$(cat "$basepath$ledpath/label" 2>/dev/null) || \
> -		label=$(cat "$basepath$ledpath/chan-name" 2>/dev/null)
> +		label=$(cat "$ledpath/label" 2>/dev/null) || \
> +		label=$(cat "$ledpath/chan-name" 2>/dev/null)
> 
>  	echo "$label"
>  }
> @@ -35,6 +43,17 @@ led_off() {
>  	led_set_attr $1 "brightness" 0
>  }
> 
> +status_led_restore_trigger() {
> +	local trigger
> +	local ledpath=$(get_dt_led_path $1)
> +
> +	[ -n "$ledpath" ] && \
> +		trigger=$(cat "$ledpath/linux,default-trigger" 2>/dev/null)
> +
> +	[ -n "$trigger" ] && \
> +		led_set_attr "$(get_dt_led $1)" "trigger" "$trigger"
> +}
> +
>  status_led_set_timer() {
>  	led_timer $status_led "$1" "$2"
>  	[ -n "$status_led2" ] && led_timer $status_led2 "$1" "$2"
> --
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
