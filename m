Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D5614EE4F
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 15:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=irzMBLmtUpTuE5GKRhzrhbTKeKc5ICiA1NYCHjlzIdY=; b=q3NeuusDr/SJy9
	x6gNZhmrDaDBxKu06I1bQzmZ2kgpBMpBoCrms/MIg/pPE2Sr9z5dXVcYt+hskPnUPG/tgbs+o8P2q
	xuYrO6CO07BR8cmpuEw+1/TlCC2YqFbP26Xb27FrKIoHapjqtVxHbhvCNuUML0jgvCfXaSN87OzWB
	IwYUNIYZW4d3eb2XHSRYyP64erZihwQG/4BzXIuKvrEo60N65cgXu41kINuUXrZLd/U2iSoaeB03r
	npwMdXwOfVNFCkwhCl9xABTXstx1CawsTbt+zSQ3Wm0ZCfqBo6C+PSohDuW7N4+LD7+Y8M2T9ZTTC
	3BKHqWYXy8WXVaYWm/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXCb-0001lH-PN; Fri, 31 Jan 2020 14:23:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXCV-0001ko-T8
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 14:23:17 +0000
Received: by mail-lj1-x243.google.com with SMTP id x7so7319180ljc.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Iefm1ROidVM2U/MmGKZkJFLHTF+56bVjEfn2c1J/vnE=;
 b=gUJ7KBhZZDspmi7ZWq3WfLcA8dSdhzQ3QSF3lam8LlBydfH4SU8H5jly+NJz17p7Jr
 X7rHc0nxW8Wvc5a91JSvtl5xO250rRd4CxyXOvCO+gquTvCh9uBRSsFxgnPm3goBl1I1
 vWOjNz2RDQYMu55hxsAjjZviY52zS3V4I0d4mP/eLomidYUgQKIKaO+l3QWFETF5tX92
 q3yGDG4JW8s4w0/MKCqLF212c1RPOyVHU3QUDoRVJcQrvqoF793f0qGhqYi5Du2CN++z
 SItJriJA+t5keZy7tfg1RWjB2B7ctxp9OX0hn2qMshubgSpe7Eor9dCcCIs+d83uIufy
 LoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Iefm1ROidVM2U/MmGKZkJFLHTF+56bVjEfn2c1J/vnE=;
 b=oiHboEolNbVAoV0/1KJUXaO1Rk37rpXYbOg8L8JoD420pnWjvXoVhAUHF94akr4s+i
 LpShDsrpJa8CeRK1w1BhGI7ygyMjnbPlSxwioGYIQghozupRzPqpLb4jTsveyh1A4wCx
 VBta2T655Nvv6vs4o6Dv4VSKS8F8+sTcBbv+HDBt1HbH9fYcYKoqmci1glRdI28abLOO
 0caez6BKWk+QL2tVBIyCgAXRrGzYUT+n/q7tDx8pnAJ4kj+tb+1LyCICOGfvgHkTFrNN
 WHvuAjY4soFj6RE3O57VVriQI9jJh+VgHn/j06S3UK9+m/TJPtN+d8ExWlQzQwb6dfxl
 jNbg==
X-Gm-Message-State: APjAAAXbjopFbIaIUJ+v7mVxmVuHDODNvsk46FMoMhfzJ7Pp5E1fpzJn
 yTVlw5LshBNNlTD0Sm35ryEFPOgY
X-Google-Smtp-Source: APXvYqw5a4dG+i5uR/kEhkjnhG6b2OJ9dkniW58Ww1F1OrsbytUIx1jdqa25SDNYdmwaFs484AaVMQ==
X-Received: by 2002:a2e:880a:: with SMTP id x10mr6256259ljh.211.1580480591779; 
 Fri, 31 Jan 2020 06:23:11 -0800 (PST)
Received: from localhost.localdomain (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id g25sm4685785ljn.107.2020.01.31.06.23.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 06:23:09 -0800 (PST)
From: Piotr Dymacz <pepe2k@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 15:22:54 +0100
Message-Id: <20200131142254.24953-1-pepe2k@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_062315_966499_D81A0E6C 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] base-files: diag: restore default trigger
 for 'boot' LED
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

For devices without a dedicated 'diag' LED, we use sometimes one of
other LEDs for indicating at least 'boot', 'failsafe' and 'upgrade'
stages. In some cases, at the same time these LEDs have defined default
triggers in DTS using 'linux,default-trigger' property. Current 'diag'
setup removes the trigger and turns off 'boot' LED after bootup.

One of the examples of such device is TP-Link TL-WR841N v14 (ramips)
which uses 'wlan' LED with defined 'linux,default-trigger' for 'diag':

aliases {
	led-boot = &led_wlan;
	led-failsafe = &led_wlan;
	led-upgrade = &led_wlan;
};

[...]

led_wlan: wlan {
	label = "tl-wr841n-v14:green:wlan";
	gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
	linux,default-trigger = "phy0tpt";
};

This patch extends 'diag.sh' and 'leds.sh' scripts to make sure default
trigger defined in DTS is restored for 'diag' LED which isn't used for
indicating 'running' stage.

Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
---
 package/base-files/Makefile                   |  2 +-
 package/base-files/files/etc/diag.sh          |  2 ++
 .../base-files/files/lib/functions/leds.sh    | 27 ++++++++++++++++---
 3 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index e389148d47..18325564dc 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=213
+PKG_RELEASE:=214
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/etc/diag.sh b/package/base-files/files/etc/diag.sh
index 8eb36c6feb..37a8ec758e 100644
--- a/package/base-files/files/etc/diag.sh
+++ b/package/base-files/files/etc/diag.sh
@@ -37,6 +37,8 @@ set_led_state() {
 		;;
 	done)
 		status_led_off
+		[ "$status_led" != "$running" ] && \
+			status_led_restore_trigger "boot"
 		[ -n "$running" ] && {
 			status_led="$running"
 			status_led_on
diff --git a/package/base-files/files/lib/functions/leds.sh b/package/base-files/files/lib/functions/leds.sh
index 8a1d21caef..43b2fe02ed 100644
--- a/package/base-files/files/lib/functions/leds.sh
+++ b/package/base-files/files/lib/functions/leds.sh
@@ -1,16 +1,24 @@
 #!/bin/sh
 # Copyright (C) 2013 OpenWrt.org
 
-get_dt_led() {
-	local label
+get_dt_led_path() {
 	local ledpath
 	local basepath="/proc/device-tree"
 	local nodepath="$basepath/aliases/led-$1"
 
 	[ -f "$nodepath" ] && ledpath=$(cat "$nodepath")
+	[ -n "$ledpath" ] && ledpath="$basepath$ledpath"
+
+	echo "$ledpath"
+}
+
+get_dt_led() {
+	local label
+	local ledpath=$(get_dt_led_path $1)
+
 	[ -n "$ledpath" ] && \
-		label=$(cat "$basepath$ledpath/label" 2>/dev/null) || \
-		label=$(cat "$basepath$ledpath/chan-name" 2>/dev/null)
+		label=$(cat "$ledpath/label" 2>/dev/null) || \
+		label=$(cat "$ledpath/chan-name" 2>/dev/null)
 
 	echo "$label"
 }
@@ -35,6 +43,17 @@ led_off() {
 	led_set_attr $1 "brightness" 0
 }
 
+status_led_restore_trigger() {
+	local trigger
+	local ledpath=$(get_dt_led_path $1)
+
+	[ -n "$ledpath" ] && \
+		trigger=$(cat "$ledpath/linux,default-trigger" 2>/dev/null)
+
+	[ -n "$trigger" ] && \
+		led_set_attr "$(get_dt_led $1)" "trigger" "$trigger"
+}
+
 status_led_set_timer() {
 	led_timer $status_led "$1" "$2"
 	[ -n "$status_led2" ] && led_timer $status_led2 "$1" "$2"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
