Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE76CEE3
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6P4/8gVRCJ761jQZ/UCXoDrGAfnDLz0pG8EG6gMOFyc=; b=m4EGN+zwItAnntgqSvgd3E/Yih
	knp8tn4P7zsHVwmXAy5IlqpJybImushK5IbELSFfbvTtwawiQtYoHXHs886qXeOKmS6xpKlBT6XuB
	EmlcdJG10Do6LoUU5884FrUreVTetUYb0/U0+N35u0JfqeRk3rKYGaMHiKJKKKd7NvL+tn4KjSsl+
	4hUXUozCeAdJCrMHGMyrA2bWEblBM2/Ufp1rx+3ne1Tr6WzSX7P/wJ9pIC6+GaaJRuxh+czf/sLgG
	UCS80S6SX6i12gLoK+fCV+2M+FTNMsL/STOitBmOF1rKzRDMF0Iir4OqTa6ULl83wLuyxuDJSDpcE
	HU2eutCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6W3-0005X2-0i; Thu, 18 Jul 2019 13:32:11 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Vi-0005VS-8o
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:31:52 +0000
Received: (wp-smtpd smtp.tlen.pl 7980 invoked from network);
 18 Jul 2019 15:31:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456705; bh=tcQsZEe6REqYmkL7FgBqYacOapnx2G5a4P7gSmwDHX4=;
 h=From:To:Subject;
 b=UwGNQUyrLoR5iRXDYsnxTavsAU31q4zKmq2xlifITIHN4pwmYa3afQJs5GmGeQt73
 5rsF0y64JWoYqCLukZhmj6XPgxkOzBjcHdtIgmLl/rObyMNI7bEiEegUwylHPN7d3E
 dvgu/IWFO5MNmbXpZYYjjK+ih7jdrgLhGLOn0zxs=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:31:45 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:31:33 +0200
Message-Id: <20190718133135.6474-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718133135.6474-1-tomek_n@o2.pl>
References: <20190718133135.6474-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 7417b85bf33587bfbbac1fac0d646bb8
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0UP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063150_626230_DF9DC776 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 1/3] x86: image: cleanup before creating
 image
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

There can be some leftovers from other image recipes, if the same
directory names are used and multiply image types are selected.
Therefore remove directories used in the recipe, before contents for the
image are prepared.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/x86/image/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 24825f2ba2..9648f8c61e 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -61,6 +61,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 
   define Image/Build/grub2
 	# left here because the image builder doesnt need these
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
@@ -94,6 +95,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 endif
 
 define Image/Build/iso
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
