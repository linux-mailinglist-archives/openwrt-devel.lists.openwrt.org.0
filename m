Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99D21B141C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 20:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D1CEsXWjBy00aa0XiNZNFQLSZwfFVce/qStCs2tyES4=; b=TTq6EhEKb4iBW9Xw3wqE6ILDoC
	i4LcAj2g7k5sJoJCJY1p4VAA6ckjNzF4VWTp8mmfA51PjfDJZ+x9Sj/gTSZbIvzi54MzY0RRtWMsd
	7KHyUm2G2SlnoE33wJHEC4hK7UhoCnnoXK0RVgErt01s3cr2+6s/PQHXfrK0QUnESAJfzjyRPrC+/
	gcaMpwuvn9c5gGCgfh3jBCbuvOV78yJEdEHLOWftS5A0enVM71+agIKVWS5fwQm3VINoJIaUoac8U
	whb8TOgm7fFzDIJdmxhOhzuLqn8smyTL+/9RrncZYdsq+dzpaEn4QyleftpmrvGkv4h6RW5OgNaDq
	74hh4fyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaux-00053H-C9; Mon, 20 Apr 2020 18:13:15 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQauT-0004nz-AQ
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 18:12:47 +0000
Received: (wp-smtpd smtp.tlen.pl 5811 invoked from network);
 20 Apr 2020 20:12:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1587406363; bh=MfH9hH5Ms52Gli3UAa+O/fyfA7vPOYcqBNeYagdsgTU=;
 h=From:To:Subject;
 b=eqoKLKlKctadOqyz/uOGEw6T9prbMjY+UZ5GgtyFOMQpriPCRWYu8g1vh3mHXXJ3j
 /oIEYBOrn0SRbPbir3LtWoDaRfl8F+icxnYJ3QhDv3K0k9Dux7eqkHEMPeYBpvaytA
 MqlFMVNVIyG9WYlKnvVrx+xWEVILVJfwSUcu0mZQ=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Apr 2020 20:12:43 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 20:12:26 +0200
Message-Id: <20200420181228.52873-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420181228.52873-1-tomek_n@o2.pl>
References: <20200420181228.52873-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: e46ec3c0eef99c59b6803d191a2fce8a
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [QVOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111245_517304_6DD36179 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 2/4] x86: fix kmod-forcedeth package
 selection
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

There's no such package as forcedeth, threfore the driver is never
selected. Fix it by properly specifying package name.

Fixes: 35f208d ("x86: add nforce eth to default packages")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/x86/64/target.mk     | 2 +-
 target/linux/x86/image/generic.mk | 2 +-
 target/linux/x86/image/legacy.mk  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/x86/64/target.mk b/target/linux/x86/64/target.mk
index 6f5f896c8b43..874e10d704e1 100644
--- a/target/linux/x86/64/target.mk
+++ b/target/linux/x86/64/target.mk
@@ -1,7 +1,7 @@
 ARCH:=x86_64
 BOARDNAME:=x86_64
 DEFAULT_PACKAGES += kmod-button-hotplug kmod-e1000e kmod-e1000 kmod-r8169 \
-	kmod-igb kmod-bnx2 forcedeth
+	kmod-igb kmod-bnx2 kmod-forcedeth
 
 define Target/Description
         Build images for 64 bit systems including virtualized guests.
diff --git a/target/linux/x86/image/generic.mk b/target/linux/x86/image/generic.mk
index c1a3f8b2e572..8a23afef0afe 100644
--- a/target/linux/x86/image/generic.mk
+++ b/target/linux/x86/image/generic.mk
@@ -2,7 +2,7 @@ define Device/generic
   DEVICE_TITLE := Generic x86
   DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000 kmod-natsemi \
 	kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-sis900 kmod-tg3 \
-	kmod-via-rhine kmod-via-velocity forcedeth
+	kmod-via-rhine kmod-via-velocity kmod-forcedeth
   GRUB2_VARIANT := generic
 endef
 TARGET_DEVICES += generic
diff --git a/target/linux/x86/image/legacy.mk b/target/linux/x86/image/legacy.mk
index 9d6fa5e3871a..5c13f95157d2 100644
--- a/target/linux/x86/image/legacy.mk
+++ b/target/linux/x86/image/legacy.mk
@@ -2,7 +2,7 @@ define Device/generic
   DEVICE_TITLE := Generic x86/legacy
   DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000 \
 	kmod-natsemi kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-sis900 \
-	kmod-tg3 kmod-via-rhine kmod-via-velocity forcedeth
+	kmod-tg3 kmod-via-rhine kmod-via-velocity kmod-forcedeth
   GRUB2_VARIANT := legacy
 endef
 TARGET_DEVICES += generic
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
