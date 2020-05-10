Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497641CCBA6
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jduhwXxG7HJmNE3xOstNgjYpYLNzHbvpeBZAQA+nb/o=; b=A15E29Xcj5NnQ0Tm1QQ7SPeZ9P
	KNdr+J1KV7hkoNBBVWcJslEk9DuvNsZnaqR+QV/L1qvsahOyy+AJbzMs/yasDvVczTvRncbawCahR
	pRbv9PtJtTeBOUe1CiqBQEeAfvdF+Yye45zGrsdQwMpE7SuUJZBpn1syLmmXqXjAdqega4nWeWEPh
	+eAf2MUO7/WhblyJJcj1R6Pt89HG4DqMvBn8Y/ZxvsV/B8AHlGqCfhw85tOPyvF/IP/+jzhL9t99S
	b1Omnt/to83v+GARbqW1iB6d50GAS6GRqZ+hgGoJGtoQl/3r44du0Vz5bbJYE+8Qgv6F9IRw7PX5g
	H3wm8jbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnHS-00085b-OB; Sun, 10 May 2020 14:50:14 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG8-0006CQ-EZ
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:55 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Ma1wa-1jdNIF1vZU-00VtzB for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:49 +0200
Message-Id: <20200510144754.10751-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:adgHjo6CXUau2SFDoelTltCOGvOerDOCdWKv4WfrM7p71MIOMI9
 K8E88i6BN1TK1vJTW3Cp0/Nup8OrmUexmNOJlFpftKZ6imKjWj0bsiQaYc5Uc+SyIHdKCQq
 C/AwKQbTfxVs8nTvASaC2BeZPVeAFQbfO+hwgD9PvOfysc5PlEjr+YiFhsKAWMu3S6heRmG
 7Bx79n6Tm1Ti4a+FillhA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iweKk7RgxCg=:egpx3ULiQl5m6vawwTcrxl
 4wf4yJ5JRkuLzLwefSF9sab74Jqiol17tl6Dd1gZ2gftcSugwRm7ADSSTmUoc0YT13gEzFECr
 2GABf+nvQJknWT/xy+eq+od8IosdIzILQLEX6ZmtxvizlK7+1JgQg+/HAH7rUeemRWqJs5GSA
 Vt8S4tJYVc9AQAdmXPG5RSPbxOIZPPx0AYR7brl9lo1ldCsa+uNRvwZRYBX8KtzJi2fZiz3Cm
 ydhufFCZZ9YvEvPpWGwumtW+2GKxqexusgQdsmMPrLFovV75gQljMxudGBdENdAbTzSNHgieR
 UBm0cmrjL+Wzx5uSltps96Su3ZN0XKZJWtsDmD0xVrdyBv4hI/gJ7aO8PzRfam1/chOiT7Kqm
 vDq1sHNyTbABYqWV4On/c5BnRY49t9IlHks6A9ldSqNg0qTNM5RoN3mW2zVLRa7eDTvN1OEco
 6+4JuNRmJS5hB1YQZYhNUxWBSZoZNplMYkAiuoQ3o5zMM9wuOnlPWchfAl3Veng+ZFr2r6P6+
 2ndxdVBLA479TtgZcq9eB7b5qt7JfdX349JRO8ShZgjRbN4Q4pZrF8ES4QOX6+58cho3bK1La
 TeVGWDB/e4iH1q3ifn+lLY1JUHKpGv1NgaAeKvJgQUJ14yRdCq/z7ox0MaH2By6or8pU3UZGe
 GSPI7NAvSY6+LFgdVCFBKe/bO+X5IgNO5fCjrhtCSjuJhoC5YoZR6s6pMRL1euBiT2v2T1Uij
 ofUa8LZh4AxA/ZwoY7A6M6K4kkzAAZfHK57zhxbQMQdDvSqluv4UaNcP5jDFs9wmm/0JYVfdA
 6YGzQ111q9xRllL8UUas7l862wjx+CzJT0fUZJExntTvkqjGY2gCQTjlLlEJhW2/E3V9An0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074852_800529_061E643C 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 05/10] netifd: replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../netifd/files/etc/hotplug.d/net/20-smp-packet-steering       | 2 +-
 package/network/config/netifd/files/lib/network/config.sh       | 2 +-
 package/network/config/netifd/files/sbin/ifup                   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/network/config/netifd/files/etc/hotplug.d/net/20-smp-packet-steering b/package/network/config/netifd/files/etc/hotplug.d/net/20-smp-packet-steering
index 9d7aaae0ac..ce5e76096a 100644
--- a/package/network/config/netifd/files/etc/hotplug.d/net/20-smp-packet-steering
+++ b/package/network/config/netifd/files/etc/hotplug.d/net/20-smp-packet-steering
@@ -14,7 +14,7 @@ find_irq_cpu() {
 	[ -n "$match" ] && {
 		set -- $match
 		shift
-		for cur in `seq 1 $NPROCS`; do
+		for cur in $(seq 1 $NPROCS); do
 			[ "$1" -gt 0 ] && {
 				cpu=$(($cur - 1))
 				break
diff --git a/package/network/config/netifd/files/lib/network/config.sh b/package/network/config/netifd/files/lib/network/config.sh
index 2a1aa65fe0..4cd28e4ce1 100755
--- a/package/network/config/netifd/files/lib/network/config.sh
+++ b/package/network/config/netifd/files/lib/network/config.sh
@@ -6,7 +6,7 @@
 find_config() {
 	local device="$1"
 	local ifdev ifl3dev ifobj
-	for ifobj in `ubus list network.interface.\*`; do
+	for ifobj in $(ubus list network.interface.\*); do
 		interface="${ifobj##network.interface.}"
 		(
 			json_load "$(ifstatus $interface)"
diff --git a/package/network/config/netifd/files/sbin/ifup b/package/network/config/netifd/files/sbin/ifup
index 5515b91f76..15be535bbf 100755
--- a/package/network/config/netifd/files/sbin/ifup
+++ b/package/network/config/netifd/files/sbin/ifup
@@ -37,7 +37,7 @@ done
 
 [ "$modes" = "down up" ] && ubus call network reload
 if [ -n "$ifup_all" ]; then
-	for interface in `ubus -S list 'network.interface.*'`; do
+	for interface in $(ubus -S list 'network.interface.*'); do
 		if_call "${interface##network.interface.}"
 	done
 	[ -n "$setup_wifi" ] && /sbin/wifi up
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
