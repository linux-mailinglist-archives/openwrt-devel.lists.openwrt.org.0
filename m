Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE95614F011
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAO3OQRH08U+I8mMyMSqCKWDpsDYaLvC/JNF0Z4/Gkg=; b=ohgXq9kzzxJS6P
	TAcyOuByjsF3RXeUeJmVXUs1K1DIWAYsKU8xDcNQ99sTjZ3+XhF85Q6Dkd15KupLBZYTv+8IjX5Cs
	rhgW5iwgz5tvdAuDDM3k+Y6w3kPzYYFjsE8Ozb0w+oc1YKiC6iODf1xWpqk7NguxQVTJrCaXCSFxW
	8k37BTQQRbcPK8pGXABYI/tBa+uVI6/Wzbkn8LXuqw+9LExZwv8lPl9QyUt3sDIV3dWxPByAvxYwp
	bvChi/RbuKGzFZrCE9/lDbhjEdPEtxU41ZXgk+ryjr6g31SlqwL7yLWoIlVjFY6cP83DHVM/gzGYu
	6aUCz7Q1MId6OX7f7Y0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYWr-0007lI-4i; Fri, 31 Jan 2020 15:48:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVZ-0006Kg-IM
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:47:02 +0000
Received: (wp-smtpd smtp.tlen.pl 31311 invoked from network);
 31 Jan 2020 16:46:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485619; bh=91PlRzuuuEtleJejpHdSTt+DYk6Dqi0K9UGHZSeCl+I=;
 h=From:To:Cc:Subject;
 b=cNtG6iq0hae3Jm+Pd3Yj0Eo97Jma7ZKYuFprA2yOkmf/RUjhV+x7C0yFh6AL90k/E
 NDTl87P7RwYhVdPJ0dzJTfIhHzZ3Q5OsI0XxlMHKjYUGIl5j/aLeMXFLY8blo2nWzy
 5lLzlZFUmK44zIlUOCMUKzPkeFM5AaL6VTAdyGfk=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:46:58 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:17 +0100
Message-Id: <20200131154620.25773-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 6aa3c5280d8d44650ffb52f02f5dfbe2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [ITOC]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074701_773408_E89085CB 
X-CRM114-Status: UNSURE (   5.89  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 5/8] mvebu: uDPU: clean package selection
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

This device receipe selects bunch of packages, which some are re-defined,
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
