Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6784169B
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gGgBG6emDjE8nF/MBxUv3zlyBAanFvRnwm5IiopPU/4=; b=cpJy5eQlT+juZn
	Gm1XVdfw8RpGcwnpWmbbD52kWrQ165EwQEaiDubFzPOUXipRkhzmG4Y5U8KBHCo5+Exa/sX6Ad6xQ
	55PoA34l2ONN2o7C3KzghRI4m9hn0ygViBnvGeL455p48gY8capfr5JVbDaZzZy3lbnOPkIIKtAYB
	OCsyta1FX7QADD1JF+VZ++GlppKru2kUZM0FQr8D8ADtbfoQ6AyJQ21myJ6nBugRvTgeOgpdODAGY
	dQAalCMlZWULBYPVywnhe7dV4bU1bnf3+1C1AUDwnn3jHuB4sgVrj/4S0Lqd/WdprZJ0rGJwRjOPb
	R+4NoAO6O3pRY3K6NqQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanzh-0005z7-Qq; Tue, 11 Jun 2019 21:07:49 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanzW-0005yS-OB
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:07:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id y17so10394425lfe.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ckvCUHecmh6Oqh+GaJD4MqSVqxNDDagJkwRGRBflw4=;
 b=gsjK6DIYK04sO/OIAde9EaGLOtJBIRgOjI5o+VPvG/NSTQNrUKunHtKeO7sXwFgLUd
 TQBSGGN/bNSSmIZ9CSo8G1ET/Nyz9oP1Trzf27rrxBVEZaevGSTDIi+sVUzgIUSUSFiF
 uzd5yvoODZz4DREhyHdiLtQ4K/gbA+sCxjsmSZS38WansSnjc6BhBCrUM+AW4LXrSmTA
 NeZAG58KGnTBiDT6BMMd/BmBW02qLyTFVVgQRXswXQrPr/R+5iYPaNvHY3Q1O+aFkiB5
 zJ9kbVQrjUHyUEqLDdn9q01XtWG45UvJ03t94eir5MwMlh0kJSvlRlltc3QWmmOVqJOn
 Utjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ckvCUHecmh6Oqh+GaJD4MqSVqxNDDagJkwRGRBflw4=;
 b=mToEeS2vgiR0eFslgivmwhG2UYlePMFONYAnJknP6W+LK1nbxY4hcwHxEU9Rbnt/0G
 bJ8rEqEowct+WqYj1CqOgXZQ/mlGSyfhKaWLGRnLYZxUBfMmI6pKoUokazIRh6e36u2N
 jS7o8qWpXZI20mfDKoea/tszUQ7UGQRnPpz1YgxpXIJPT6HMKB8wG68BOQS1q4YOzCHY
 pT4g90e5Hlbimo8gdMOz+H7vwfH9C/yWF/y/3RZqRBLaAMxQ+UITbOqPLnztTpefcf7q
 D5StxGrf08X3jDKJuJEAAfGGHOcnlvnoVDYJMXsclehC6fMUoDM0Peh+Ln61gskZry0M
 k+1A==
X-Gm-Message-State: APjAAAXNlnTZ/5RCcvSWP86NcMVz13aLF+cnjzS31QUW/sqxdMPOrMsi
 8p1FbXG1cz763LmfgKIM6FKrvA==
X-Google-Smtp-Source: APXvYqzD8PFn7yKK1WbPezIP0VYy56SGZrZmwplRytSRo7fbgbqNO/oAqkESPjRuWKLPrFvSn6emyA==
X-Received: by 2002:a19:f00a:: with SMTP id p10mr3739262lfc.68.1560287256962; 
 Tue, 11 Jun 2019 14:07:36 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id h131sm2711757lfe.80.2019.06.11.14.07.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:07:35 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 11 Jun 2019 23:06:53 +0200
Message-Id: <20190611210655.18652-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_140738_789811_42E4121A 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/3 v2] gemini: Use library functions to
 assign MAC address
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This simplifies the ethernet address extraction script
by using standard library functions to locate the MTD
partitions and extract ethernet address from a binary
offset location in the flash.

Suggested-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- New patch prepended to the series
- Hold back switchover to use "ip" rather than "ifconfig".
  ip link set eth0 address 00:50:c2:11:11:11
  returns
  ip: socket(AF_PACKET,2,0): Address family not supported by protocol
  We can fix up the use of "ip" when we know why it's not
  working.
---
 .../lib/preinit/05_set_ether_mac_gemini       | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index 1ce5c8067ef0..a79ee5057ffc 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -1,11 +1,14 @@
 #!/bin/sh
 
+. /lib/functions.sh
+. /lib/functions/system.sh
+
 set_ether_mac() {
 	# Most devices have a standard "VCTL" partition
-	CONFIG_PARTITION="$(grep "VCTL" /proc/mtd | cut -d: -f1)"
-	if [ ! -z $CONFIG_PARTITION ] ; then
-		MAC1="$(strings /dev/$CONFIG_PARTITION |grep MAC|cut -d: -f2|cut -c3-14|sed -e 's,\(..\),:\1,g' -e 's,^:,,')"
-		MAC2="$(strings /dev/$CONFIG_PARTITION |grep MAC|cut -d: -f8|cut -c3-14|sed -e 's,\(..\),:\1,g' -e 's,^:,,')"
+	part=$(find_mtd_part VCTL)
+	if [ ! -z $part ] ; then
+		MAC1="$(strings $part |grep MAC|cut -d: -f2|cut -c3-14|sed -e 's,\(..\),:\1,g' -e 's,^:,,')"
+		MAC2="$(strings $part |grep MAC|cut -d: -f8|cut -c3-14|sed -e 's,\(..\),:\1,g' -e 's,^:,,')"
 
 		ifconfig eth0 hw ether $MAC1 2>/dev/null
 		ifconfig eth1 hw ether $MAC2 2>/dev/null
@@ -14,11 +17,11 @@ set_ether_mac() {
 
 	# The DNS-313 has a special field in its RedBoot
 	# binary that we need to check
-	CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
-	if [ ! -z $CONFIG_PARTITION ] ; then
-		DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
+	part=$(find_mtd_part RedBoot)
+	if [ ! -z $part ] ; then
+		DEVID="$(dd if=$part bs=1 skip=119508 count=7 2>/dev/null)"
 		if [ "x$DEVID" = "xdns-313" ] ; then
-			MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
+			MAC1=$(mtd_get_mac_binary RedBoot 119540)
 			ifconfig eth0 hw ether $MAC1 2>/dev/null
 			return 0
 		fi
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
