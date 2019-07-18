Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CAC6CF01
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kXWgWyPWegqmwIQPcup8/vJrssW4JxRZL3CpLDKsCPk=; b=E4Yudz9ayDs/D8
	uVDNMzqU0ylt4q+0RR70Hpl/wD9bUCikm42ZFrMUWyn3rIb+Yd1zgZBw0XlU3uod1yWoJ/mQxtXeS
	HhIpyIjQXN7NHKuk05ewLT3YnmHsoqDHlZ6EN4+mvHlt2KAjJSHU4MLz5us04MHVe5z6yM+dOkYDB
	4Aivnh2CN7S5EyrspsI2kKXmfspXAqEgXi3bCFXN6ECCt6u7Li1SHif6QWOA6oOK/LL3KBetDEe3H
	C887kfqion4FGD1x0536IldkOKco22ubLX44OFfBb/2WOMXMZ2bSQoCJLTIgCw5xCMpmBgNL9DhaU
	16AWez0hp9CT5u0fMHmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6cT-0000xG-At; Thu, 18 Jul 2019 13:38:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6ae-0000es-88
 for openwrt-devel@bombadil.infradead.org; Thu, 18 Jul 2019 13:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4bQPrMP8Em3HZRWGzNyC2af7PUvHymrBN09SV7dRDU=; b=TF5lrC2mleeeOahUmPgI3H+a1t
 ItPf5Y1A76GvvPtYSQgh6nGFSDe5oik2IYpToJl+SaIt5L7elyhLd/QeHwMpbxS0SJihtsMrxgWQK
 MU3lyGSwhivuaQTK31LZI7kztxf4+zjsR+WS/2FL3INOX9XvncJ1rAjRdzxTVWnT3mrfw25G+H7lv
 f7DcldWZtYMgE3qYH5bxNSpTaib8Bz2Phmk3lEAwGebeTTwwFcugdNH8JSF7f9Qieowmybhz6qlfs
 t6dWVjYTLqviByYsldxD6eC+EwsF9FHX2lL1hYsPdVg4/doRMVkGGKjD8L4ilkW5k9s8wtLV6NecM
 d+ahJsNA==;
Received: from mx-out.tlen.pl ([193.222.135.148])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6aj-0007zX-AR
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:37:03 +0000
Received: (wp-smtpd smtp.tlen.pl 7800 invoked from network);
 18 Jul 2019 15:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456980; bh=N4bQPrMP8Em3HZRWGzNyC2af7PUvHymrBN09SV7dRDU=;
 h=From:To:Subject;
 b=ePWieY9XtvivqkHBFR7R2s42LyxbZ3Jvn4YusotN75Mb2dqNGdjYIuCZsR1yRDopn
 sZwru4AJG+eMjH1UsqGMQr7AVfBe1snL7SvQAXxTeagEJ5lZxuTngJIkamn03Jco1b
 FGI919oz6epE4WTbjhBQH/0Ur/1QxhlqyA49feEM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:36:20 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:36:14 +0200
Message-Id: <20190718133614.6978-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: 2feff7daa1e726d887eb50b018210aa4
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [gSHl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_143701_465270_CDAF4185 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mvebu: enable xHCI USB controller connected
 to PCIe
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

This commit fixes regression on Linksys WRT1900 (Mamba) where this device
doesn't have USB 3.0 controller integrated in SoC, instead it has Etron
EJ168 connected to PCIe lane. Previously enabled in kernel 4.4 and 4.9,
was lost in transition to 4.14. It also removes duplicated functionality
from kmod-usb3.

Fixes: 4ccad92 ("mvebu: Add support for kernel 4.14")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/kernel/linux/modules/usb.mk | 1 -
 target/linux/generic/config-4.14    | 1 +
 target/linux/generic/config-4.19    | 1 +
 target/linux/generic/config-4.9     | 1 +
 target/linux/mvebu/config-4.14      | 1 +
 target/linux/mvebu/config-4.19      | 1 +
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/package/kernel/linux/modules/usb.mk b/package/kernel/linux/modules/usb.mk
index d64094f55d..0493e60d83 100644
--- a/package/kernel/linux/modules/usb.mk
+++ b/package/kernel/linux/modules/usb.mk
@@ -1674,7 +1674,6 @@ define KernelPackage/usb3
 	CONFIG_USB_XHCI_HCD \
 	CONFIG_USB_XHCI_PCI \
 	CONFIG_USB_XHCI_PLATFORM \
-	CONFIG_USB_XHCI_MVEBU=y \
 	CONFIG_USB_XHCI_MTK \
 	CONFIG_USB_XHCI_HCD_DEBUGGING=n
   FILES:= \
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index b299f4a749..d80b8f71c2 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -5509,6 +5509,7 @@ CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
 # CONFIG_USB_WUSB is not set
 # CONFIG_USB_WUSB_CBAF is not set
 # CONFIG_USB_XHCI_HCD is not set
+# CONFIG_USB_XHCI_MVEBU is not set
 # CONFIG_USB_XHCI_TEGRA is not set
 # CONFIG_USB_XUSBATM is not set
 # CONFIG_USB_YUREX is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 5b8a6d35d9..c1e67dced9 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -5785,6 +5785,7 @@ CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
 # CONFIG_USB_WUSB_CBAF is not set
 # CONFIG_USB_XHCI_DBGCAP is not set
 # CONFIG_USB_XHCI_HCD is not set
+# CONFIG_USB_XHCI_MVEBU is not set
 # CONFIG_USB_XUSBATM is not set
 # CONFIG_USB_YUREX is not set
 # CONFIG_USB_ZD1201 is not set
diff --git a/target/linux/generic/config-4.9 b/target/linux/generic/config-4.9
index 1194f5a5a8..57e57c489b 100644
--- a/target/linux/generic/config-4.9
+++ b/target/linux/generic/config-4.9
@@ -5074,6 +5074,7 @@ CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
 # CONFIG_USB_WUSB is not set
 # CONFIG_USB_WUSB_CBAF is not set
 # CONFIG_USB_XHCI_HCD is not set
+# CONFIG_USB_XHCI_MVEBU is not set
 # CONFIG_USB_XUSBATM is not set
 # CONFIG_USB_YUREX is not set
 # CONFIG_USB_ZD1201 is not set
diff --git a/target/linux/mvebu/config-4.14 b/target/linux/mvebu/config-4.14
index dca685cffe..7a0caeeb61 100644
--- a/target/linux/mvebu/config-4.14
+++ b/target/linux/mvebu/config-4.14
@@ -482,6 +482,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_MVEBU=y
+CONFIG_USB_XHCI_PCI=y
 CONFIG_USB_XHCI_PLATFORM=y
 CONFIG_USE_OF=y
 CONFIG_VECTORS_BASE=0xffff0000
diff --git a/target/linux/mvebu/config-4.19 b/target/linux/mvebu/config-4.19
index 5a554a0bda..5fb93fa8e7 100644
--- a/target/linux/mvebu/config-4.19
+++ b/target/linux/mvebu/config-4.19
@@ -484,6 +484,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_MVEBU=y
+CONFIG_USB_XHCI_PCI=y
 CONFIG_USB_XHCI_PLATFORM=y
 CONFIG_USE_OF=y
 CONFIG_VFP=y
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
