Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A0D1A44AE
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 11:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JHTD2uYcEmXMTExJpSVcXXb0TSX5w7IXlLRwOJLYdLY=; b=AFXnGlLVKkX0e0
	Blvon3z4s6rDlr7BvdTKRyv90E1umHSNlABKr7INCuD8iZlTHAhUnCWz+xxPH2hKoIxZBiYhNR9Eo
	S4A1Cn1kIum+2km1rHDSszXNVilLtMKz+/uqViXlmmwyEjHmhbG9HugWZR6V49+0CuqSHk4stCCdD
	Axa+3dxd3EjyPAfLwXJHeA14TVfAOoJTOnut5eJ+2nRpG0QvmdLylbIVer6a1ajBDl+I64Oena0UD
	PxVn9cy6pTLfVpYj0PrH3OiwlBuSwR7z09nCeRPYlP5VrQYJ0so2YkjmuGtYJP++VGZfRQNIskolv
	W5D/8ID0++xdBLrSbrkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqGE-0006np-2q; Fri, 10 Apr 2020 09:47:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqG8-0006ng-Cj
 for openwrt-devel@bombadil.infradead.org; Fri, 10 Apr 2020 09:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Eiern/sZJsIPTmGtNGIZD7sjxbmqaRMbLsN8lMYiM7c=; b=vD4usHo0OOlMsvDt90L0ZAb+SL
 hi11QAsGY6TOnDhphTZknWThqUzMTuYfOtUzwlH7EgI/7C5G+5Evs9mma+I0Z1XzjUB9KhcLoUsGo
 rbppyl8pLM7VVljnvUVgr/EIg+Q3u2tC7fR0BsMlw+dkX/+mTexCbWpbA6YpmzXcnrnviV40AETV4
 iwyer34Z0XsnsJKalyc0m6Qgq+xnUMRkICxlqYlA1Bcj9P+pWvbgF3hLAUspGpqPYz4P0HnnZ3A0B
 j0BrEF70QX+bX97h18EtrByrPDWWTEHF3c9yumJteGq5lFqxCilwwep15Ap7oM2kZeUA9DkmuM9Ej
 q5I2AkQw==;
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqFz-0003HL-3f
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 09:47:33 +0000
X-QQ-mid: bizesmtp22t1586512015tepqv1yx
Received: from localhost.localdomain (unknown [113.116.147.224])
 by esmtp6.qq.com (ESMTP) with 
 id ; Fri, 10 Apr 2020 17:46:55 +0800 (CST)
X-QQ-SSF: 01100000000000O0NJ50000A0000000
X-QQ-FEAT: vjJEMjdVuT13NLCDURY5gu6sWv87+Z/gC1eHP54ARM2dV7QKLV/tlsqNxdrQn
 2gYuVnELO+r30jy8suWenf9gw7VOw6VoDrQc74ypKwPScsRBY45w0IhUvOSsDfcBkyIJBtV
 VuFH3kpCyJjQjMUZXhtVSe2/arn7V9jb+t5JoYzshqqdJ0GpMEsVEJVaz8ndz6fQxuUmpOs
 uXkDgMMh/B5VrlxWJM3WPew85VklNKoKaiZkcEzTcURWbALfHxaarJuq0dRZOf8o1GMjLVD
 E500RRA4mRHqbGIhSNjo/dth1i+8uTPPDC06qsmL/eL0Ul3B3qS5Jw+QlM5ATkTqWBEpRCB
 1YlQfVMlQ6gAsIuQnKxB0dbqMq2MQ==
X-QQ-GoodBg: 0
From: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 Apr 2020 17:46:49 +0800
Message-Id: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.59.177.22 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
Subject: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200
 (GL.iNet)
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
Cc: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: guilin.wang@gl-inet.com <guilin.wang@gl-inet.com>
---
 package/kernel/om-watchdog/Makefile               |  2 +-
 package/kernel/om-watchdog/files/om-watchdog      | 40 +++++++++++++++++++----
 package/kernel/om-watchdog/files/om-watchdog.init |  2 ++
 3 files changed, 37 insertions(+), 7 deletions(-)

diff --git a/package/kernel/om-watchdog/Makefile b/package/kernel/om-watchdog/Makefile
index 403069b..02520d2 100644
--- a/package/kernel/om-watchdog/Makefile
+++ b/package/kernel/om-watchdog/Makefile
@@ -12,7 +12,7 @@ PKG_RELEASE:=2
 PKG_VERSION:=1
 
 include $(INCLUDE_DIR)/package.mk
-
+PKG_CONFIG_DEPENDS += BUSYBOX_CONFIG_FLOAT_DURATION
 define Package/om-watchdog
   SECTION:=base
   CATEGORY:=Base system
diff --git a/package/kernel/om-watchdog/files/om-watchdog b/package/kernel/om-watchdog/files/om-watchdog
index d730c68..b12db3e 100644
--- a/package/kernel/om-watchdog/files/om-watchdog
+++ b/package/kernel/om-watchdog/files/om-watchdog
@@ -1,15 +1,43 @@
 #!/bin/sh
 
+. /lib/functions.sh
+
 GPIO=$1
 
 trap "" INT HUP
 
+om_feed_dog()
+{
+        while true; do
+                echo 1 > /sys/class/gpio/gpio${GPIO}/value
+                sleep 1
+                echo 0 > /sys/class/gpio/gpio${GPIO}/value
+                sleep 180
+        done
+}
+glinet_feed_dog()
+{
+        local count=1
+        for i in $(seq 1 $count);
+        do
+                echo 1 >/sys/class/gpio/gpio14/value
+                sleep 0.01
+                echo 0 >/sys/class/gpio/gpio14/value
+                sleep 0.01
+        done
+}
+
 echo $GPIO > /sys/class/gpio/export
 echo out > /sys/class/gpio/gpio${GPIO}/direction
 
-while true; do
-	echo 1 > /sys/class/gpio/gpio${GPIO}/value
-	sleep 1
-	echo 0 > /sys/class/gpio/gpio${GPIO}/value
-	sleep 180
-done
+board=$(board_name)
+if [ "$board" = "glinet,gl-x1200-nor" -o "$board" = "glinet,gl-x1200-nor-nand" ];then
+        echo 14 >/sys/class/gpio/export
+        echo out >/sys/class/gpio/gpio14/direction
+        while true;do
+                glinet_feed_dog 
+                sleep 10
+        done
+else
+        om_feed_dog 
+fi
diff --git a/package/kernel/om-watchdog/files/om-watchdog.init b/package/kernel/om-watchdog/files/om-watchdog.init
index 4c407da..5d3ffdd 100644
--- a/package/kernel/om-watchdog/files/om-watchdog.init
+++ b/package/kernel/om-watchdog/files/om-watchdog.init
@@ -50,6 +50,8 @@ get_gpio() {
 	elif [ "$board" = "teltonika_rut5xx" ]; then
 		# ramips
 		return 11
+	elif [ "$board" = "glinet,gl-x1200-nor" -o "$board" = "glinet,gl-x1200-nor-nand" ];then
+			return 16
 	else
 		#we assume it is om1p in this case
 		return 3
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
