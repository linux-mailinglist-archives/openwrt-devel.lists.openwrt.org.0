Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FADC943B
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 00:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W1iCdGp1h4tT7/mXMpL6LDRIaRx9dOyF+wIPFLyRyT0=; b=iypxNAQ+BfsPD8
	vP/OAROMR8tjgk/JQJpJHFx9Wv7nqNvTNznwwHwrEC+YdmGbgjYuDgvrximQNs2YV+S04lhaUYAot
	Iif96Ye1JW/9MzyPlHvWdOU335cqNAKZXNF+NYxDdCKanM8gFq+WcEuqP4W56uSr8AYASSB86Hsmu
	tav+Osh+kRwZNj+zQXdzzEZMzza3WuZjBHv/heGTKAPOrDeXzbaz4nxqRBb/Hpxb5GN+H6Qd9NMEJ
	wYe3yMEtx2Fr9P4WvKtrBIKRgKmjL7GXIZcLYmo0kbnwZ1GXiE0z03kNTYvXO+aYyC+anjb98/AHE
	t5g09MDqVaKhx2f/dusA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn0a-0005uT-42; Wed, 02 Oct 2019 22:22:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn0O-0005t6-9e
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 22:21:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id y10so519519plp.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 02 Oct 2019 15:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=RkaQ7x80/6ZHUAxrk2SotQcEzvtpvGDOlvnE4zwW+eU=;
 b=tH81USNpd/Cm5k544ub9/FFPKfIaJQusi2JHp5kx4XjBQ7VvQ82yVs90qLoiHNZRL/
 JAErchphkv0xVvcjSpVoO82xhTTdD3Z+v76UJX2z/osPPs2A8jPNVXFU1DeUCRcGawmF
 CjzA9v+lqnsy8iZKga4VhUq6W9pEFU9nQ157RBs5CwoCMFSDJlLJ3L0TPvdGYj9UWfIq
 zn1Q+nu4yJ17Jf4SC7xXn2qJZRdRGdtlJIqOxYSBrX9SzErPw4JFPxb/BQ38nLO9mZl4
 hNV4DFCMIRHHo+G572ZeUwZYzxbRRCRuORsZaX7A5pIwr54zpKF4ndqST8XNZ1yKbQun
 EKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RkaQ7x80/6ZHUAxrk2SotQcEzvtpvGDOlvnE4zwW+eU=;
 b=BXE39pE9pcadOre7QRcOIforocYiElu019IAJLfQzyRG14Z7ij9B2obymMXzvb5S31
 2wKZ+gh4LSwy/dRhiPDH2AwPFZMmK6gxN1uV8GoYnDHFQa+Z3E+1pzjLDLClPZVrEx53
 H8PFPyyMzjpr6w2DF4ZpYqt+UOUh5D2MVjubtuyoQara/DeuW5nb/cEHMQPDrd2g0//A
 Et9O1v/HS8z+Lhj/QwAYkmbNSGlfHgOPtk6at/bhIVvb4Wu8sTn6kdz2XqUMHN2+Crbe
 nx9QAUckVGKwMeksjxp64a+nRb5LxQQr/B4W5c2P9PgiaZ0kwXiIrmymWpQsuD3S+bEb
 zGwg==
X-Gm-Message-State: APjAAAVeGcCgHeZ8ta7KxYOBqUakWe9emjl17J5tf4SVM+x6TJNk79+T
 Fp7q+WTzNv9S+fhnEpnb36mqkDYrL4U=
X-Google-Smtp-Source: APXvYqy56WF1LEMjuYOpaMldS4AVTtf7dbYrrjk+IFem5Sr8Kpo/IWuUa4LCr6cDvhf8uCJ+KBTXJA==
X-Received: by 2002:a17:902:6b05:: with SMTP id
 o5mr6155057plk.33.1570054915298; 
 Wed, 02 Oct 2019 15:21:55 -0700 (PDT)
Received: from tharvey.pdc.gateworks.com
 (68-189-91-139.static.snlo.ca.charter.com. [68.189.91.139])
 by smtp.gmail.com with ESMTPSA id k66sm256554pjb.11.2019.10.02.15.21.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 02 Oct 2019 15:21:54 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  2 Oct 2019 15:21:47 -0700
Message-Id: <1570054907-11762-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152156_337131_8791ED90 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] imx6: bootscript: use partition UUID
 for rootfs if possible
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Specifying root filesystem by device is non-deterministic for several reasons:
 - USB device unmeration order is not garunteeed for USB storage devs
 - MMC devs ordering is determined by the instance of the MMC host controller
   including non-storage SDIO devices which can throw off numbering depending
   on kernel versions.

It is recommended to use partition UUID

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/imx6/image/bootscript-ventana | 34 ++++++++++++++++++------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/target/linux/imx6/image/bootscript-ventana b/target/linux/imx6/image/bootscript-ventana
index 8451caf..06e2015 100644
--- a/target/linux/imx6/image/bootscript-ventana
+++ b/target/linux/imx6/image/bootscript-ventana
@@ -1,4 +1,4 @@
-echo "Gateworks Ventana OpenWrt Boot script v1.02"
+echo "Gateworks Ventana OpenWrt Boot script v1.03"
 
 # set some defaults
 # set some defaults
@@ -9,7 +9,7 @@ setenv bootargs console=${console},${baudrate}
 setenv loadaddr 10800000
 setenv fdt_addr 18000000
 
-# detect dtype and bootdev by looking for kernel on media the bootloader
+# detect dtype by looking for kernel on media the bootloader
 # has mounted (in order of preference: usb/mmc/sata)
 #
 # This assumes the bootloader has already started the respective subsystem
@@ -31,18 +31,9 @@ else
 	fi
 	echo "detected dtype:$dtype"
 fi
-if test -n "$bootdev" ; then
-	echo "Using bootdev from env: $bootdev"
-else
-	if itest.s "x${dtype}" == "xmmc" ; then
-		bootdev=mmcblk0p1
-	else
-		bootdev=sda1
-	fi
-fi
 
+echo "Booting from ${dtype}..."
 if itest.s "x${dtype}" == "xnand" ; then
-	echo "Booting from NAND..."
 	# fix partition name
 	#  OpenWrt kernel bug prevents partition name of 'rootfs' from booting
 	#  instead name the partition ubi which is what is looked for by
@@ -54,9 +45,24 @@ if itest.s "x${dtype}" == "xnand" ; then
 	# enable UBI fastmap support
 	setenv bootargs "${bootargs} ubi.fm_autoconvert=1"
 else
-	echo "Booting from block device ${bootdev}..."
 	setenv fsload "${fs}load ${dtype} ${disk}:1"
-	setenv root "root=/dev/${bootdev} rootfstype=${fs} rootwait rw"
+	part uuid ${dtype} ${disk}:1 uuid
+	if test -z "${uuid}"; then
+		# fallback to bootdev
+		if test -n "$bootdev" ; then
+			echo "Using bootdev from env: $bootdev"
+		else
+			if itest.s "x${dtype}" == "xmmc" ; then
+				bootdev=mmcblk0p1
+			else
+				bootdev=sda1
+			fi
+		fi
+		setenv root "root=/dev/${bootdev}"
+	else
+		setenv root "root=PARTUUID=${uuid}"
+	fi
+	setenv root "$root rootfstype=${fs} rootwait rw"
 fi
 
 setenv bootargs "${bootargs}" "${root}" "${video}" "${extra}"
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
