Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E29180D19
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7cSepfPuuAhTeUdn4WJ726EiYvYaTOJEx9eCDvP27k=; b=LNt4tAEBCyewiX
	p/YCn69nECj8tnYSlGHlQ8c1epDq2s75rLHSeZd02ooPxCNn4OpF7lrsbvRp3ZB8wJy6gDHwNxhpP
	xEk4TloBlw0u1iYPZo82JXD/w68e/t+LetpFWeWvzeSWOvFFszDMNg3ivUbIiWVcA4Q2KwgzTT4WG
	ZrB5MvuVKIcOCufEfiHJOP4abDE+GzUM6xJvNcR2XuAd8CJUMcSDqyMzix9dmr4JfpWVBIhaktD7w
	uQ76xKl20QblzTXfdt8t3rguwG1y4qHpAMQf/gB/GKaNLiCsMysbTeIxI3wgtALQ0nJ3/jTdCxwkh
	W/h7SRLzmNpESi5MkzVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBpq2-0007xV-G6; Wed, 11 Mar 2020 01:07:10 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBppe-0007ei-Mb
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:06:48 +0000
Received: by mail-pl1-x631.google.com with SMTP id j20so257079pll.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AUntSCuZxs4OJPw7VMbkbbP1eB5yMS9W9QByJnN6DGM=;
 b=Hp8fBBIuFwTuZIlk1a1vV0fkkRi1jgfvbJhA+7PDCV/UIktus9PDLXmyNAV/vzgdf0
 D+LfNYsJsTTrm4HkVdQ1fW9jAGYzDf1TRdxqeS6/4aGmPDYqpyZYLhvgqVjXYqX8+71b
 XqViJ/2scoAKI5E5p9YMUPM9WcC36RpZQXcvafdoBJ9LJkKG0jugtJKwQeYaq6Q360l8
 OaPxV4miDevlXvRVfzubwn3RO7kFxSmERS8ELK/nti+cRsoe3WK3L5Z4MWu8tAhQJjyF
 fnpqKezbh7pj/mbUvGdqWwXC1HN27CLOv6YI5lvSE2nfd1YvdiQpSVGg7Hb/ZAZSlc6K
 pIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AUntSCuZxs4OJPw7VMbkbbP1eB5yMS9W9QByJnN6DGM=;
 b=VKxqI074i8voQQdak75omYINePJ7Fn6vygGUZuPlsyKMS9rZfGMYDX7JSkqiEgZ3gb
 dh1DQxjQlGYKegJhCCLREgDQwPziCJHUYRcN9IFhRxqav2crAhiQp+8DGbzkPFoC0a5H
 pttjC66IIdDLBPDkGxCeqDGzpOZXxoJ7uVkiFNALpgn3l12ZjFZnznRvMAgimI4v4eKm
 1H7+l9/yDIVHH9WY2cn42jXo7LMhEitfG68Z+SgQbhWhJ1G6M2Ei/NEt2Dgukv+ZzMSD
 kmK8TTcpwOh9xDDVFnJFLuJqgq/L0pAdR+OFFlXcDCAAnXUMkSvXeKgwIlsHnlCYD6EM
 Ehaw==
X-Gm-Message-State: ANhLgQ271XZdx/G/yKGS9hHrm/YMQWtvf7xHbVNvl1tYLB9/V8lpx1iY
 V+dwPRrynjWGoAi6w6hU/bMoAI660Fsq2g==
X-Google-Smtp-Source: ADFU+vu9IjSc9RIDMh1/2IxkGk0TGZbN87fpOyOCBbzKyqxvZ3Hg9tlWuWxQYOQtNOQRC2MWCYAK5w==
X-Received: by 2002:a17:90a:f0d4:: with SMTP id
 fa20mr669324pjb.153.1583888805154; 
 Tue, 10 Mar 2020 18:06:45 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id m18sm46353680pgd.39.2020.03.10.18.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:06:44 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 18:06:03 -0700
Message-Id: <20200311010605.2818827-3-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180646_782131_6FF4DF4B 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4 2/4] ath79: rename ubnt_bullet-m to
 ubnt_bullet-m-ar7241
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 ...1_ubnt_bullet-m.dts => ar7241_ubnt_bullet-m-ar7241.dts} | 4 ++--
 target/linux/ath79/generic/base-files/etc/board.d/01_leds  | 2 +-
 .../linux/ath79/generic/base-files/etc/board.d/02_network  | 2 +-
 .../base-files/etc/hotplug.d/firmware/10-ath9k-eeprom      | 2 +-
 target/linux/ath79/image/generic-ubnt.mk                   | 7 ++++---
 5 files changed, 9 insertions(+), 8 deletions(-)
 rename target/linux/ath79/dts/{ar7241_ubnt_bullet-m.dts => ar7241_ubnt_bullet-m-ar7241.dts} (68%)

diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
similarity index 68%
rename from target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
rename to target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
index a43ed2afdc..bb0f19c9eb 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
@@ -6,8 +6,8 @@
 #include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
-	compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
-	model = "Ubiquiti Bullet M";
+	compatible = "ubnt,bullet-m-ar7241", "ubnt,xm", "qca,ar7241";
+	model = "Ubiquiti Bullet M AR7241";
 };
 
 &eth1 {
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 390f5f3657..cf9dfd2b0d 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -245,7 +245,7 @@ tplink,tl-wr842n-v2)
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
-ubnt,bullet-m|\
+ubnt,bullet-m-ar7241|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-loco-m|\
 ubnt,nanostation-loco-m-xw|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index ac29c53ced..24ba524c73 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -41,7 +41,7 @@ ath79_setup_interfaces()
 	tplink,re450-v1|\
 	tplink,re450-v2|\
 	tplink,tl-wr902ac-v1|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-ar7241|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
 	ubnt,litebeam-ac-gen2|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index b06a481c94..225915ef3b 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -90,7 +90,7 @@ case "$FIRMWARE" in
 	tplink,tl-wr2543-v1|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-ar7241|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
 	ubnt,picostation-m|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index aad177bf4a..9752319209 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -113,14 +113,15 @@ define Device/ubnt_airrouter
 endef
 TARGET_DEVICES += ubnt_airrouter
 
-define Device/ubnt_bullet-m
+define Device/ubnt_bullet-m-ar7241
   $(Device/ubnt-xm)
   SOC := ar7241
   DEVICE_MODEL := Bullet-M
+  DEVICE_VARIANT := XM (AR7241)
   DEVICE_PACKAGES += rssileds
-  SUPPORTED_DEVICES += bullet-m
+  SUPPORTED_DEVICES += bullet-m-ar7241
 endef
-TARGET_DEVICES += ubnt_bullet-m
+TARGET_DEVICES += ubnt_bullet-m-ar7241
 
 define Device/ubnt_bullet-m-xw
   $(Device/ubnt-xw)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
