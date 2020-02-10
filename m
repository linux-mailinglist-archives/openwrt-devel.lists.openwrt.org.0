Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E85157ED9
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zohb8lti2zoMCsjk7kBJzVdOTVsAf/QmAyTAXsiIjo=; b=Cl/jrltPnky/z3
	NvQrovnlUJY617DkTE2OFTsVrFriTJ1Fj3xbhX8HIHSngB1CXFBCdnm4SYcGODz2ETbKJSLdx8Zb5
	lHB5absP8tXzjqtDFNiilObC61lVNp1GP+XJ9qGjMFPANz4+MOGRaqOImRJwy6B0+UXmGe03RDfNl
	gJk18p0v1O38VNcFCf1hrDgMQex5heWdgJH4gB0YWxIQ2nZdrgRDjUt+wD+r/TxqmPO/1a1vmPfSY
	dpC2WQYbKurnbt3/hErgRS+ejf76gr4IPHLTWuFxogvpk2QcTIZgbb0klpf/SiukKKelob0CuttzB
	rnBWCJteRXFiW7/bHiJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B53-0001dx-Kl; Mon, 10 Feb 2020 15:34:37 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B4I-0000tP-DN
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:33:54 +0000
Received: (wp-smtpd smtp.tlen.pl 13733 invoked from network);
 10 Feb 2020 16:33:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1581348824; bh=5yDUHAHh0WSb6XqaYbULGP7GJ2ZU2p/VLqsLRFyYIJE=;
 h=From:To:Cc:Subject;
 b=oBXNB4kgFnp42c3rvkMxBEhicTGMCLmRaoZrIt6eAuXOwFvzydwjTa2XGoAaOXGmS
 alGKWHRQaze5jf2fmZW2ZcJUYLse9rxlFP3CCJ4J677BumFJtSTE3ckHbJhxhpgc+1
 N7jCbVg8IH/LO927e2DEU/NhIj1X72S4ANvpZ8p8=
Received: from pub-15.183.29.194.multiplay.pl (HELO localhost.localdomain)
 (tomek_n@o2.pl@[194.29.183.15]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Feb 2020 16:33:44 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Feb 2020 16:33:24 +0100
Message-Id: <20200210153327.3443-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210153327.3443-1-tomek_n@o2.pl>
References: <20200210153327.3443-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: ba325111424f9d6188f31be75c90a163
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wSOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073350_812015_52BE3325 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 2/5] mvebu: uDPU: clean package selection
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
Cc: Scott Roberts <ttocsr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This device receipe selects bunch of packages which some are re-defined,
unnecessary or irrelevant. Clean them up, so only basic functionality
persist.

Cc: Scott Roberts <ttocsr@gmail.com>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/cortexa53.mk | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/target/linux/mvebu/image/cortexa53.mk b/target/linux/mvebu/image/cortexa53.mk
index 73bd61f22e..987d904597 100644
--- a/target/linux/mvebu/image/cortexa53.mk
+++ b/target/linux/mvebu/image/cortexa53.mk
@@ -62,9 +62,7 @@ define Device/methode_udpu
   KERNEL_LOADADDR := 0x00080000
   KERNEL_INITRAMFS := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
   KERNEL_INITRAMFS_SUFFIX := .itb
-  DEVICE_PACKAGES := f2fs-tools e2fsprogs fdisk ethtool kmod-usb2 kmod-usb3 \
-			kmod-e100 kmod-e1000 kmod-e1000e kmod-igb kmod-ixgbevf \
-			kmod-mdio-gpio kmod-switch-mvsw61xx kmod-i2c-pxa
+  DEVICE_PACKAGES += f2fs-tools fdisk kmod-i2c-pxa
   IMAGE_NAME = $$(IMAGE_PREFIX)-$$(2)
   IMAGES := firmware.tgz
   IMAGE/firmware.tgz := boot-scr | boot-img-ext4 | uDPU-firmware | append-metadata
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
