Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988861943AF
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 16:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cxk9xJdiTO30irvMqyIIEGEk30ojWud+Ihejt9U6yW4=; b=Y62ZjPGOlb93dZ
	/k8jro5iKAOm8jfUNZLI8zRYa1U9bXgcYW5LsoUn4q1cD2aqOhJE17LkElS+9YbVM/JE9xS3CY+2H
	NerzDVf8k8Y9begB/3QtZsu/X73DUfXi+QyoARmyp7LnxjB2bSYM8FwvbKv3QLillWymjI0xIoxQZ
	Mg6rx6ty+SmJ3uS8nNDVidGy22WuzF+Umyoc6LiQ5KnZpaNxkdmhaFFPCBu++qwpQ3ODC5eNt0R+G
	UTvI3eXGSXCDr4IXTi79/joCzQHgzZG0us22B6cyJk1RA47/RWuU29vZZR8EAm+PdZirwoNwpXirK
	coLMcGl60x7iIEHciXhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUtF-0002IX-52; Thu, 26 Mar 2020 15:57:53 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUt6-0002Hq-Qx
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 15:57:46 +0000
Received: from buildfff.adridolf.com ([188.192.136.247]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mv2tE-1jYtBE1AVU-00r2W9 for <openwrt-devel@lists.openwrt.org>; Thu, 26
 Mar 2020 16:57:40 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 16:56:54 +0100
Message-Id: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dCDR8EaqhJh+fk6NKKMH18PX9J4OgyEbjoW7jZcdZEzU/GJ/YvA
 msVYh8kIA2eqq7IeWEMv6O77k9j0klsMgXV3/oPOlOOy9HM/r1QBER3tEA4voXSJPlFjR2u
 ZFYhWsxDdiyDaNpN1JUeBOJ2xvRqtDONbs4246mXqBkthX0ZHNlnQCh7+KgnOERtfAbWzUH
 bLasj9YADG6cxdG33fYkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PLrK+HZDc4A=:y65UG/adjOVfoN0tBRfsqS
 iQ+GrGqpiF+NaAxvKwQYdG++jkE4jVwmP3oTtjw/wKgE7k4cEbpWxWESXTcJh3lQQSraTJaZG
 s9/4tyuXPIbq6GJ4UJ6myfRQIEabjbJMPOzuxmFevnMNA/3VpMdbaKPFrJlo70KLEHV8JI0b7
 VY6LkpdZ8wQcvcfmaHhxzSdxgIH40BFv6nbLT4nknTv0v0cARA37l+5pmpPuKG9b2FrMiM9NK
 H/hpOMGumgHgigkAbH9K+ckj/hyrpjdgIEOVx9/t/nNx+sNjrktqO3D2I/3HXyNT3tmzDi16Q
 8/jvPfYzcVQ9qX9dE7znSDZ3ezbCg+43QUgzo9YiMMILh1vlEGBh5Wdnhe8OjwFzsW6eK6Q7v
 UslVGBN5+DA//JyJt84aTN+HSnLgx/e+C4P+7s2B7+U1xtLN/7KECyVw2tzkeNp3CSvfZsNtP
 SP1z+UxqhSqpNXKLhEvMsNXL6nJAmUjAFKidJ2lpCh1AjvQhZpFF2155dYfNrjDFrGE6oqoY5
 pduEJ5ACy7vHPxonPqkpc6IiltmTAN6lW+2LTefHjKUPV6439U23BKjjF4OeMXxgg5wDdkIWb
 2209QbXvlzkRlPi5BMsh5qg8JA4l6+h5tH1A0Sl8QSi3TVuQJjmVbhS6Qt5tI3dIX6O0TSpiI
 IAGMs99F86xHYw/ykgzvRUXiuS1E9P/bmAKvct7RjBQBwJDSW+Gyo1NnlJOXxeGx4mLfDOS0v
 kxD3wwcn7aYfoPN1uXVTlpSF4kCyVjdUSdUBecRl+5uFPBRsjDCuw5eF6tOjzKrh94usQtdQp
 xdHsITTy7lDbCoCJiOQdPk7Z81zeqmrpoQwj8QUzHP5Qe3kS6JeAMGqoC8LQt6NqOP6Bryn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_085745_166288_1AB6EB9B 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory image
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

While the purpose of a factory image in general is to flash a
device with vendor OS "directly", some vagueness has evolved over
the years with respect to additional uses of these images.

One common case is when a device supports TFTP recovery.
Particularly with TP-Link devices in ar71xx/ath79, it is common
that the factory image can be flashed via TFTP without any additional
measures. In contrast, on some ramips devices the same procedure might
overwrite your u-boot partition and make the device unbootable.
However, in both cases you might only have a factory.bin which
won't reveal any further information just by itself.

To improve the situation at least a bit, this commit tries to
clarify the image names by introducing the following three schemes:

factory.bin - used from vendor OS, _not_ suitable for TFTP
factory-tftp.bin - used from vendor OS, _also_ suitable for TFTP
tftp.bin - can _not_ be used from vendor OS, but can be used via TFTP

Since factory.bin and tftp.bin are already used widely, this will
keep the impact relatively small by only adding the "combined"
factory-tftp.bin image name. No additional images are built, just
the name of the existing one is slightly adjusted for matching cases.
Despite, the name change as an indicator for the new TFTP capability
will have to be added manually, so in case of uncertainty the image
name will indicate the lesser functionality by default.

Thus, this patch introduces the factory-tftp.bin name for all devices
where TFTP flashing instructions are indicated by the commit message,
and for all TP-Link devices with v1 image/header or tplink-safeloader.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is meant as a base for discussion. I plan to do the same for
ramips later if this sees positive resonance.

Feel free to add information about devices I overlooked.

This is not even build-tested.
---
 target/linux/ath79/image/common-tp-link.mk  |  6 ++---
 target/linux/ath79/image/generic-tp-link.mk |  2 +-
 target/linux/ath79/image/generic.mk         |  4 +--
 target/linux/ath79/image/tiny-tp-link.mk    | 28 ++++++++++-----------
 4 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index 328eaaed30..ed636ed7fd 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -17,9 +17,9 @@ define Device/tplink-v1
   LOADER_TYPE := gz
   KERNEL := kernel-bin | append-dtb | lzma
   KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | tplink-v1-header
-  IMAGES += factory.bin
+  IMAGES += factory-tftp.bin
   IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
-  IMAGE/factory.bin := tplink-v1-image factory
+  IMAGE/factory-tftp.bin := tplink-v1-image factory
 endef
 
 define Device/tplink-v2
@@ -80,7 +80,7 @@ define Device/tplink-safeloader
   KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header -O
   IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
 	append-metadata | check-size
-  IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
+  IMAGE/factory-tftp.bin := append-rootfs | tplink-safeloader factory
 endef
 
 define Device/tplink-safeloader-uimage
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 4c925cf850..0e2a56a6d5 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -166,7 +166,7 @@ define Device/tplink_archer-c7-v2
 	ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0xc7000002
   SUPPORTED_DEVICES += archer-c7
-  IMAGES += factory-us.bin factory-eu.bin
+  IMAGES += factory-tftp-us.bin factory-tftp-eu.bin
   IMAGE/factory-us.bin := tplink-v1-image factory -C US
   IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
 endef
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index aac89e9269..53cdd04c1e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -574,8 +574,8 @@ define Device/engenius_epg5000
   DEVICE_MODEL := EPG5000
   DEVICE_PACKAGES := ath10k-firmware-qca988x-ct kmod-ath10k-ct kmod-usb2
   IMAGE_SIZE := 14656k
-  IMAGES += factory.dlf
-  IMAGE/factory.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
+  IMAGES += factory-tftp.dlf
+  IMAGE/factory-tftp.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
 	append-rootfs | pad-rootfs | check-size | \
 	senao-header -r 0x101 -p 0x71 -t 2
   SUPPORTED_DEVICES += epg5000
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index dc91a74ae1..d0bb119923 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -279,9 +279,9 @@ define Device/tplink_tl-wr841-v11
   DEVICE_VARIANT := v11
   TPLINK_HWID := 0x08410011
   SUPPORTED_DEVICES += tl-wr841n-v11
-  IMAGES += factory-us.bin factory-eu.bin
-  IMAGE/factory-us.bin := tplink-v1-image factory -C US
-  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
+  IMAGES += factory-tftp-us.bin factory-tftp-eu.bin
+  IMAGE/factory-tftp-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-tftp-eu.bin := tplink-v1-image factory -C EU
 endef
 TARGET_DEVICES += tplink_tl-wr841-v11
 
@@ -292,9 +292,9 @@ define Device/tplink_tl-wr841-v12
   DEVICE_VARIANT := v12
   TPLINK_HWID := 0x08410012
   SUPPORTED_DEVICES += tl-wr841n-v11
-  IMAGES += factory-us.bin factory-eu.bin
-  IMAGE/factory-us.bin := tplink-v1-image factory -C US
-  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
+  IMAGES += factory-tftp-us.bin factory-tftp-eu.bin
+  IMAGE/factory-tftp-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-tftp-eu.bin := tplink-v1-image factory -C EU
 endef
 TARGET_DEVICES += tplink_tl-wr841-v12
 
@@ -315,10 +315,10 @@ define Device/tplink_tl-wr940n-v4
   DEVICE_VARIANT := v4
   TPLINK_HWID := 0x09400004
   SUPPORTED_DEVICES += tl-wr940n-v4
-  IMAGES += factory-us.bin factory-eu.bin factory-br.bin
-  IMAGE/factory-us.bin := tplink-v1-image factory -C US
-  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
-  IMAGE/factory-br.bin := tplink-v1-image factory -C BR
+  IMAGES += factory-tftp-us.bin factory-tftp-eu.bin factory-tftp-br.bin
+  IMAGE/factory-tftp-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-tftp-eu.bin := tplink-v1-image factory -C EU
+  IMAGE/factory-tftp-br.bin := tplink-v1-image factory -C BR
 endef
 TARGET_DEVICES += tplink_tl-wr940n-v4
 
@@ -329,10 +329,10 @@ define Device/tplink_tl-wr940n-v6
   DEVICE_VARIANT := v6
   TPLINK_HWID := 0x09400006
   SUPPORTED_DEVICES += tl-wr940n-v6
-  IMAGES += factory-us.bin factory-eu.bin factory-br.bin
-  IMAGE/factory-us.bin := tplink-v1-image factory -C US
-  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
-  IMAGE/factory-br.bin := tplink-v1-image factory -C BR
+  IMAGES += factory-tftp-us.bin factory-tftp-eu.bin factory-tftp-br.bin
+  IMAGE/factory-tftp-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-tftp-eu.bin := tplink-v1-image factory -C EU
+  IMAGE/factory-tftp-br.bin := tplink-v1-image factory -C BR
 endef
 TARGET_DEVICES += tplink_tl-wr940n-v6
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
