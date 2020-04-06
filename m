Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FB01A016B
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 01:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeY491vCuhubZRjhslueZi7GSIpkF/g4Knr19j2tj48=; b=IY/f+HsdT6hVWn
	X5F2DI1R7j83/i0Wv6mxpJUV6k0I7I2ASrzm76rNsMojYqN4cvXyjjM9Vq3RVbZA2SNI3Mgmdvzo8
	x85cZ5w1W62ORfVQPEVjs7HWmnueMAoP5cda0UY39ERNLMDA6xfl2U/Hkge41hqBGC3ekTcR42Oy5
	AvxW3Su7l7bFbgCuA7MibSMrGQD4wQXrHo6mCeF9TpRmQx0HwypK7sipYYrXdGVb7rmtHzlr4417R
	dLOf7gPNmz8/m4UhzIIHbM0uLguhL0t+grUM5Id+K/Q1SKNHi4xJ2+MhvmcCIysWcedyzGFoULXqv
	IZTGa676H94oR+DGEmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLaxW-00033N-JZ; Mon, 06 Apr 2020 23:15:14 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLaxO-0001g1-Al
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 23:15:07 +0000
Received: by mail-il1-x12c.google.com with SMTP id t11so1318861ils.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 16:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4/1CmnsYQ/o7NZAdoTpkHxVgz4C2RToe4PLheRXdfqA=;
 b=T0HjVQLx+Ovq7JJOM16muz0JUHEowFsxfyzcA9NoM5/QqinSzhGlXAu06fpr57dCzi
 17KT5IcCx+jHduafheVOzoyHDuhAh5+bD4UKHX8d8VtrlVpsjWtAKnDJ73sd8E4x6fsY
 acgudVrCmHBRHxU4DM2VcmOXlFdCbQdew8oY5WSzafmqKtw0rzHzcvKqb1Q/ahlmpwv6
 NJIXQhl8tQI2CnphdMp4n9uP7WZ/eNrAI5IdaKnmni3BXxM/M8b4CIK9fy/X1gqdnMtR
 7L3vgriRcODDxPS11jUVCjg0Cb0LOiy7x9sfydw14YJokyD7IRv9gd54Rbjp/LY0NljM
 WmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4/1CmnsYQ/o7NZAdoTpkHxVgz4C2RToe4PLheRXdfqA=;
 b=DX8sU5kxhF8G+IfCQaOpP2DCyMMxQKb8PJdKBZrAr2PkstD9RPVRidMgB/iuCeX+6c
 /+/l85Hosy3mb05sGeCi4x2A/XHQUOy4hk4W/+IBYPuTdeOn/72KQpg1Fole0oYDFsrT
 gT24S3iaQ24+ZBCoBQ/kzFhuyvdDVOrANIyK48mUlxn1wo0aqTNellXOha2h0cY44ICl
 8iWMtPYs5Fz94hUZn/Kw2HUvEO5jcSoIF4gWquL6o0ywWISrz0Rj5E+g7EOGgm35Uid0
 eb7Ysh6cT7ao9RftMePKRSCwZyFUlUenrAhtSH9boDGUsRlsa2xTWpCT4kHS6tvZKxzu
 jRDw==
X-Gm-Message-State: AGi0PubJAVP/JO2CjX0gmamRraUachNtlt5x6sQaon9I6bFhVK1/gLte
 zU3rermMfhI5SPaG11xpF0DwAln2QRU=
X-Google-Smtp-Source: APiQypI5h0mNLkNBc25cH8hOaBft1rypWt4BDQI+Ceruna7rfJCvsBnmGf5pdUUoQg3l4NyQm62BxQ==
X-Received: by 2002:a92:c8c8:: with SMTP id c8mr1788294ilq.221.1586214904600; 
 Mon, 06 Apr 2020 16:15:04 -0700 (PDT)
Received: from ubuntu.lan (c-73-228-76-42.hsd1.ut.comcast.net. [73.228.76.42])
 by smtp.gmail.com with ESMTPSA id
 d70sm6436146ill.57.2020.04.06.16.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 16:15:04 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 16:14:39 -0700
Message-Id: <20200406231439.88217-1-dan.haab@luxul.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_161506_410581_36510643 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [riproute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC WiFi
 devices
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

This prepares support for models XAP-1610 and XWR-3150. Flashing
requires using Luxul firmware version:
1) 8.1.0 or newer for XAP-1610
2) 6.4.0 or newer for XWR-3150
and uploading firmware using "Firmware Update" web UI page.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 .../bcm53xx/base-files/etc/board.d/02_network | 19 ++++++++++++++++++-
 target/linux/bcm53xx/image/Makefile           | 18 ++++++++++++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network b/target/linux/bcm53xx/base-files/etc/board.d/02_network
index f86f12407f..b3d614d6a2 100755
--- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
+++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
@@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5@eth0"
 		;;
+	luxul,xap-1610-v1)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "5@eth0"
+		ucidef_set_interface_lan "eth0.1" "dhcp"
+		;;
+	luxul,xwr-3150-v1)
+		ucidef_add_switch "switch0" \
+			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan" "5@eth0"
+		;;
 	phicomm,k3)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
@@ -87,20 +96,28 @@ bcm53xx_setup_macs()
 	case "$board" in
 	asus,rt-ac87u)
 		etXmacaddr=$(nvram get et1macaddr)
+		offset=1
 		;;
 	dlink,dir-885l | \
 	netgear,r7900 | \
 	netgear,r8000 | \
 	netgear,r8500)
 		etXmacaddr=$(nvram get et2macaddr)
+		offset=1
+		;;
+	luxul,xwr-3100v1 | \
+	luxul,xwr-3150-v1)
+		etXmacaddr=$(nvram get et0macaddr)
+		offset=5
 		;;
 	*)
 		etXmacaddr=$(nvram get et0macaddr)
+		offset=1
 		;;
 	esac
 
 	# If WAN MAC isn't explicitly set, calculate it using base MAC as reference.
-	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
+	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && wan_macaddr=$(macaddr_add "$etXmacaddr" $offset)
 
 	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan" "$wan_macaddr"
 }
diff --git a/target/linux/bcm53xx/image/Makefile b/target/linux/bcm53xx/image/Makefile
index 610af03abe..b3ec1e99a2 100644
--- a/target/linux/bcm53xx/image/Makefile
+++ b/target/linux/bcm53xx/image/Makefile
@@ -291,6 +291,15 @@ define Device/luxul-abr-4500
 endef
 TARGET_DEVICES += luxul-abr-4500
 
+define Device/luxul-xap-1610
+  $(Device/luxul)
+  DEVICE_MODEL := XAP-1610
+  DEVICE_PACKAGES := $(BRCMFMAC_4366C0)
+  IMAGE/lxl := append-rootfs | trx-serial | luxul-lxl
+  LUXUL_BOARD := XAP-1610
+endef
+TARGET_DEVICES += luxul-xap-1610
+
 define Device/luxul-xbr-4500
   $(Device/luxul)
   DEVICE_MODEL := XBR-4500
@@ -299,6 +308,15 @@ define Device/luxul-xbr-4500
 endef
 TARGET_DEVICES += luxul-xbr-4500
 
+define Device/luxul-xwr-3150
+  $(Device/luxul)
+  DEVICE_MODEL := XWR-3150
+  DEVICE_PACKAGES := $(BRCMFMAC_4366C0) $(USB3_PACKAGES)
+  DEVICE_DTS := bcm47094-luxul-xwr-3150-v1
+  LUXUL_BOARD := XWR-3150
+endef
+TARGET_DEVICES += luxul-xwr-3150
+
 define Device/netgear
   DEVICE_VENDOR := NETGEAR
   IMAGES := chk
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
