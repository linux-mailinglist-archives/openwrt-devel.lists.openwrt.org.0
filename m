Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFB13797B
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Jun 2019 18:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgfRBXuW5WOcnQ0YIY+myx2ItVEIQG1NvHHvU8VEPWQ=; b=bEDFp8i02qn45Q
	IJNLvridHnB18yo8ksFzh6UjXK0er2qYg7e+B4C411Lrbe3zcSUDkwaR4LHpBoBuRSJXT5p5Ivi5X
	kkyt61DkDwC0pYKd4Ok54U3eYwpVzb2JXRvNThwobSRTsBs8TYLma9XjZePJE+jJk6fb2xqiMDTu3
	kn7dooLDd+Sg9TbE/j2ldaiw87J9hX2CtBhIxoMX/SGMyan7pzIiE/TTJ7U93oAY8nARd3NT07eDe
	mo+pOst20TE6Z/WcvM1D2ytdGx+GxGwl3YltUta6tzq4T7dyhNAOGWA7+DsW1noZv+vzgLSxBBjha
	9/eZPaIbTH75UXjNOToQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvF4-0004ui-Ug; Thu, 06 Jun 2019 16:27:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvEv-0004uN-UN
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 16:27:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so3067245wre.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Jun 2019 09:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vEdO6SQW8ICnZA4vXXJRGFk+RF07UF+of5ElVN4SXQY=;
 b=ZperZ7W/lAeTS5Me36wutQ+SfKBtkP9Gfqf6jXwyPKA+Iod9YunEwwqmTVOYAqC66I
 CnXmFGWgIZ8zVePyogM+6jvn2CeIsZs7n0fnDvjxYL8ppjl3YcS7jYqcnu5xcxeVbSk3
 PQwN9gvLD3QkMv2L0wrL/Gi5O56ljOZhZKLDVziUBThe5J2MRzWeViRcaS8NW9oSVelU
 wCqX83GoZpNCJh4Odmp7uXUEORbPWUsOI8EeDZBQKGRIZepXJRWFEPRjFX86Nu0qflXr
 630t9VTl+0KwEsaySLGICIyuyL20OKWlwwr1ybKq4zuwIVyENePMhFvOBkALfns1Z6Ep
 cNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vEdO6SQW8ICnZA4vXXJRGFk+RF07UF+of5ElVN4SXQY=;
 b=JvZ7LNVkWoKp3xJEbxjTBIpjx12PYBeYQTfgJg8LrXqTM4nbkQMcvsDCGNFxWdxnG2
 g2X3rFmn5+DoINceihPX8vnLLHOYxTNhY/bJFdxtUlq4L0P+woijvOvftoTd43allqQq
 3h3CRVmVQP/zNlL5m1jYPNpWg+nu0PYebUfT6YPEXcpr4Bfbkswmpai235x5uZyaScB6
 U88L0OmgvOQjqxgaCJGVuTpmiMa/u2soLGolPG/tYlicvcDsJmPrrHS/6WeaKCSgcB3J
 ShO/Ud0FCwzHe9YqP32bYl/nf0Vk90nLS8SajWLWhwzK4PIVdQCBwNZTMzutiDYPzcmd
 zLRw==
X-Gm-Message-State: APjAAAWt3maqLDekhg40t9LD7nzSCTnlt2O+MxFGNWZzU+YBDv/8gceD
 fcXp5h3m8ZGeIzokXwEk9rKCPjw8
X-Google-Smtp-Source: APXvYqyQp7r4Q6s1y755cztYpQNVJww0TR0iIcg8sLERVv9EOw9Wf5iTC4FELephHl/fWuyc4ytQOw==
X-Received: by 2002:adf:c5c1:: with SMTP id v1mr12978081wrg.129.1559838462298; 
 Thu, 06 Jun 2019 09:27:42 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id b14sm1592617wro.5.2019.06.06.09.27.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 09:27:41 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  6 Jun 2019 18:27:39 +0200
Message-Id: <20190606162739.7531-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_092745_978029_A4A4332B 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: Remove redundant LED-cases
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

01_leds has several redundant LED-cases. This commit cleans
up the file by merging these cases into shared cases.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 .../ramips/base-files/etc/board.d/01_leds     | 100 ++++++------------
 1 file changed, 32 insertions(+), 68 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 1b02088ed2..35d046cc90 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -13,30 +13,29 @@ boardname="${board##*,}"
 board_config_update
 
 case $board in
-3g-6200n)
+3g-6200n|\
+br-6475nd|\
+mzk-w300nh2)
 	set_wifi_led "$boardname:amber:wlan"
 	;;
 3g-6200nl|\
+air3gii|\
 hilink,hlk-7628n|\
+mr-102n|\
 skylab,skw92a|\
-wnce2001)
+wnce2001|\
+zbt-we2026)
 	set_wifi_led "$boardname:green:wlan"
 	;;
-br-6475nd|\
-mzk-w300nh2)
-	set_wifi_led "$boardname:amber:wlan"
-	;;
 ai-br100)
 	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" "eth0.2"
 	set_wifi_led "$boardname:blue:wlan"
 	;;
-air3gii)
-	set_wifi_led "$boardname:green:wlan"
-	;;
 alfa-network,ac1200rm)
 	set_wifi_led "$boardname:green:wlan2g" "wlan1"
 	;;
-alfa-network,awusfree1)
+alfa-network,awusfree1|\
+edimax,br-6478ac-v2)
 	set_wifi_led "$boardname:blue:wlan"
 	;;
 alfa-network,tube-e4g)
@@ -96,37 +95,47 @@ cudy,wr1000)
 	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
 	ucidef_set_led_switch "lan2" "lan2" "$boardname:blue:lan2" "switch0" "0x04"
 	;;
-d240)
+d240|\
+mlw221|\
+mlwg2|\
+rakwireless,rak633|\
+rt-ac51u)
 	set_wifi_led "$boardname:blue:wifi"
 	;;
 dcs-930l-b1)
 	ucidef_set_led_netdev "wifi" "WiFi" "$boardname:blue:wps"
 	;;
 dir-300-b1|\
-dir-600-b1|\
-dir-620-a1)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
 dir-300-b7|\
 dir-320-b1|\
+dir-600-b1|\
 dir-610-a1|\
+dir-615-d|\
+dir-615-h1|\
+dir-620-a1|\
 esr-9753|\
 hlk-rm04|\
+kn|\
+nbg-419n2|\
 sl-r7205|\
 v11st-fe|\
 w306r-v20|\
+w502u|\
 wt1520-4M|\
-wt1520-8M)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
-dir-615-d|\
-dir-615-h1)
+wt1520-8M|\
+zyxel,keenetic-start)
 	set_wifi_led "rt2800pci-phy0::radio"
 	;;
 dir-620-d1|\
 dlink,dwr-116-a1|\
 head-weblink,hdrm200|\
-mzk-ex300np)
+kn_rc|\
+kn_rf|\
+kng_rc|\
+mzk-ex300np|\
+oy-0001|\
+tew-714tru|\
+zbt-wr8305rt)
 	set_wifi_led "$boardname:green:wifi"
 	;;
 dlink,dwr-118-a1)
@@ -149,9 +158,6 @@ dlink,dwr-922-e2)
 dir-860l-b1)
 	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "eth0.2"
 	;;
-edimax,br-6478ac-v2)
-	set_wifi_led "$boardname:blue:wlan"
-	;;
 ex2700|\
 wn3000rpv3)
 	set_wifi_led "$boardname:green:router"
@@ -163,7 +169,8 @@ ex3700)
 f5d8235-v1)
 	set_wifi_led "$boardname:blue:wireless"
 	;;
-fonera20n)
+fonera20n|\
+tiny-ac)
 	set_wifi_led "$boardname:orange:wifi"
 	;;
 gnubee,gb-pc1|\
@@ -212,15 +219,6 @@ kimax,u35wf)
 	set_wifi_led "$boardname:blue:wifi"
 	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
 	;;
-kn|\
-nbg-419n2)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
-kn_rc|\
-kn_rf|\
-kng_rc)
-	set_wifi_led "$boardname:green:wifi"
-	;;
 lava,lr-25g001)
 	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "wlan1"
 	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" "wlan0"
@@ -243,13 +241,6 @@ mikrotik,rbm11g)
 miniembplug)
 	set_wifi_led "$boardname:red:wlan"
 	;;
-mlw221|\
-mlwg2)
-	set_wifi_led "$boardname:blue:wifi"
-	;;
-mr-102n)
-	set_wifi_led "$boardname:green:wlan"
-	;;
 mr200)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
 	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
@@ -267,9 +258,6 @@ netgear,r6120)
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
 	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
 	;;
-oy-0001)
-	set_wifi_led "$boardname:green:wifi"
-	;;
 gehua,ghl-r-001|\
 pbr-m1)
 	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet" "eth0.2"
@@ -292,9 +280,6 @@ wndr3700v5)
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
 	set_wifi_led "$boardname:green:wifi"
 	;;
-rakwireless,rak633)
-	set_wifi_led "$boardname:blue:wifi"
-	;;
 re350-v1)
 	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$boardname:blue:wifi2G" "wlan0"
 	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$boardname:blue:wifi5G" "wlan1"
@@ -305,9 +290,6 @@ rp-n53)
 	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
 	set_wifi_led "$boardname:blue:wifi"
 	;;
-rt-ac51u)
-	set_wifi_led "$boardname:blue:wifi"
-	;;
 rt-n12p)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
 	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
@@ -322,12 +304,6 @@ tama,w06)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
 	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
 	;;
-tew-714tru)
-	set_wifi_led "$boardname:green:wifi"
-	;;
-tiny-ac)
-	set_wifi_led "$boardname:orange:wifi"
-	;;
 tl-wr840n-v4)
 	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
 	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
@@ -397,9 +373,6 @@ vocore-8M|\
 vocore-16M)
 	ucidef_set_led_netdev "eth" "ETH" "vocore:orange:eth" "eth0"
 	;;
-w502u)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
 wavlink,wl-wn570ha1)
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
 	ucidef_set_rssimon "wlan0" "200000" "1"
@@ -457,9 +430,6 @@ zbt-ape522ii)
 zbt-wa05)
 	set_wifi_led "$boardname:blue:air"
 	;;
-zbt-we2026)
-	set_wifi_led "$boardname:green:wlan"
-	;;
 zbt-we826-16M|\
 zbt-we826-32M)
 	set_wifi_led "zbt-we826:green:wifi"
@@ -470,9 +440,6 @@ zbtlink,zbt-we1226)
 	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
 	;;
-zbt-wr8305rt)
-	set_wifi_led "$boardname:green:wifi"
-	;;
 zorlik,zl5900v2)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
 	;;
@@ -480,9 +447,6 @@ zyxel,keenetic-extra-ii)
 	set_wifi_led "$boardname:green:wifi"
 	ucidef_set_led_switch "internet" "internet" "$boardname:green:internet" "switch0" "0x01"
 	;;
-zyxel,keenetic-start)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
 youku-yk1)
 	set_wifi_led "$boardname:blue:air"
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
-- 
2.19.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
