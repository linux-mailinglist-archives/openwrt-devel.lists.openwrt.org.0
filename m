Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9622A062
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 23:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=afM7U2pXy1KwIVIx7l5QslWH41bPL6mhpjrougXV57Q=; b=buVMxOmNZoDJR/
	Zf03cYRQVENYeNTX4t8yQv9pd04/+memyfBLXz86FSpsTLBcWCA+Sa5+5t1FrWk7SuLqIdrY14rVQ
	0/p6OYCWJJSk2gokTSpJeD8PttI4HvSzSOcvntrd+nreZuYrnSgeXewYAyjoNfrosyr2ad0VP8kzs
	b8xMLzbTA2BzjaNk1gteYuxEBrSa1YqRz7ZvSKtnUUv2LC0WYp/nYwxTNDItzXKLV6gsGCcZr2Qtn
	AT6y94qE0YJvZh1C7qs28inQTzRmpNDkLLldmz86fCc45LaiBFGV3LvRBIo00h7GispDekV7557WT
	91WNbqOMk486uo77UiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHjT-0001mW-8C; Fri, 24 May 2019 21:28:07 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHjM-0001m2-6i
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 21:28:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id m15so9827275ljg.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 14:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5P7umcAF01iD6eKC8QbIl69QGmHDTE4yaEcs9BgSyI=;
 b=dcGjyCrn62f0cmHDfqTWGBWaOF7Ii2goTlzY+RFYqCvbeaDe1GnL/pzkiVSV6Z2mqu
 of9nX9cjSXfJmr8V8yKBckQDSTP5NuIS9Fo0bV7EywdN7k78KTa75ktT0/r9V/LYMPdQ
 y+FCKho0DH2gw7FsuE6VyggjREalWl3rysOJtHco4X4tBTNeJDp/eQxrXZ9FmJxXr7WX
 kyFH6wNlxZ0ipXxuJbsCEn2C1ms1PcJeYY+IwtXIpW7iAKWb3U5e/X6AFohcQyiWC6Uc
 B55oxLIrL8/ZoWXIoDZ+c0305j3UZrDA1MzUimlC20lodSFg+hmV6RCYUkLWC/cY1rdy
 nSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5P7umcAF01iD6eKC8QbIl69QGmHDTE4yaEcs9BgSyI=;
 b=mPhBZaz0nwzWyt9xGhHgtavd+nptBirYsqPmpGKl7n7+cEGDvt80bGkLtXut2+rPki
 OOy/CNdPhaEuMC3Hk6q+f5pAL1/u9Ub4DhsRON+1smoZZ4cNKHBfOwEtStQQJ9wNv6Y5
 5EPaw6QbGUvq6rloDvaBGSGi39AAhzucv1gAZwK57pYvuDnbI7RZip+5o8WIAXSPl/EO
 TV8gCsr24aQjSJpNynD6G4w6yXUppdEztdgae5uOgb4XkGUGQOkhEpXGtPu2cpEtpDhQ
 lviJA65YgbCyS5POllR6bJc3pmuUqt1rCA6xx4m7wp0F52w35lnIuB9beLPd5kbWoJeb
 CT8g==
X-Gm-Message-State: APjAAAXmsG+6qC6aQVUlNL9roORt02FhWcXgpjWMsanGSV1h8H8cOeNW
 7F3JGQaZkreWagKszy0vO4Ofsg==
X-Google-Smtp-Source: APXvYqxTJEqWMZAlE1aJr9VhYTxTzUvnZSWJKis1DdMLuY9v3VMd9EtSQGeWbGv/iqf8kAsvQ0aA4A==
X-Received: by 2002:a2e:860a:: with SMTP id a10mr10878169lji.158.1558733277967; 
 Fri, 24 May 2019 14:27:57 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id k20sm784450lfm.30.2019.05.24.14.27.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:27:56 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Fri, 24 May 2019 23:27:17 +0200
Message-Id: <20190524212719.30694-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_142800_250838_C2253956 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/3] gemini: Make a per-board case for
 ethernet MAC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The DNS-313 isn't the only special board so let's bite the
bullet and create a case ladder in preparation for DIR-685.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../lib/preinit/05_set_ether_mac_gemini       | 30 ++++++++++++-------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index 1ce5c8067ef0..ebd3ae0f55c5 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -1,6 +1,25 @@
 #!/bin/sh
 
 set_ether_mac() {
+
+	. /lib/functions.sh
+
+	case $(board_name) in
+	dlink,dns-313)
+		# The DNS-313 has a special field in its RedBoot
+		# binary that we need to check
+		CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
+		if [ ! -z $CONFIG_PARTITION ] ; then
+			DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
+			if [ "x$DEVID" = "xdns-313" ] ; then
+				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
+				ifconfig eth0 hw ether $MAC1 2>/dev/null
+				return 0
+			fi
+		fi
+		;;
+	esac
+
 	# Most devices have a standard "VCTL" partition
 	CONFIG_PARTITION="$(grep "VCTL" /proc/mtd | cut -d: -f1)"
 	if [ ! -z $CONFIG_PARTITION ] ; then
@@ -12,17 +31,6 @@ set_ether_mac() {
 		return 0
 	fi
 
-	# The DNS-313 has a special field in its RedBoot
-	# binary that we need to check
-	CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
-	if [ ! -z $CONFIG_PARTITION ] ; then
-		DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
-		if [ "x$DEVID" = "xdns-313" ] ; then
-			MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
-			ifconfig eth0 hw ether $MAC1 2>/dev/null
-			return 0
-		fi
-	fi
 }
 
 boot_hook_add preinit_main set_ether_mac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
