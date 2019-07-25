Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D34875040
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 15:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/LWsBMrTP3/bHCN0KPpL8IPd/FtoGC6C/oWuBTY63iE=; b=U7lDaJCFAo/l3W
	tkaL3yPiRjiOWqj54zrAgGD9CQ4OvaLcae/1Zapn1UZ/JciAav5ZFU48dPOpqZMTjBTKezb+YHEAt
	EpRjrL1IWLpoYLE3Y4nuTJtfTufvlGaVwKd6TpupMwc1+xXcrd/NO64m7DaH2IbKV4oUoo9jncgSs
	ilos0/WqBjt69G7fyCfPMY0rMDh0wn8kEShcc1XbEW0lXvQPcmJkN+p5EX4l2MP1UH5XZKDkmBugU
	WG/AIbZVEpqe7yiCbvyKYBqEUaCMsuOJV6br+LXwKgdmDDf6XvN7IlXAF1jEON/D7m6NpOiJSvC/+
	l8YnDfuFWSBznp43pcYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeC9-0000Ra-KD; Thu, 25 Jul 2019 13:54:09 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeBx-0000Kz-SN
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 13:53:59 +0000
Received: (wp-smtpd smtp.tlen.pl 24701 invoked from network);
 25 Jul 2019 15:53:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1564062834; bh=Q0yGvVFFOzXLbDsHEEZO47HBam/lKuCjE037UqMvTQU=;
 h=From:To:Subject;
 b=F1Gz3OiNKljt9+xnsRJHbU4HQQBVp7GEQxc6mQdcr6Xe3XRSekenuwuRId/EttPmZ
 kUlTcUEOWbNELGctD6HQ7QFu78mOp/7HvwFxfiM2CiIZAftfhtfQ8Q+z7eGFus02Pg
 D/4UGLAkidU3fI7WzNb0gHI2E+YrBHZkxU7iQVjk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Jul 2019 15:53:54 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 15:53:49 +0200
Message-Id: <20190725135349.4380-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: 7c0d1b75d6e893812eafbb2b2d935377
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [oQE1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_065358_081317_B479971F 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] kernel: drop mvebu support in kmod-usb3
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

This is already enabled as kernel built-in feature in mvebu target and
none other target will use it.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/kernel/linux/modules/usb.mk | 1 -
 target/linux/generic/config-4.14    | 1 +
 target/linux/generic/config-4.19    | 1 +
 target/linux/generic/config-4.9     | 1 +
 4 files changed, 3 insertions(+), 1 deletion(-)

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
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
