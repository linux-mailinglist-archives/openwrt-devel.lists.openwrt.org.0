Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E61013B143
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 18:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WB9cR3nK8ews2jJ7hkaVjBQLuXkMW7lTvW5cusrw93I=; b=pWixXGTaf2NfUgXVPl0DTkfraP
	ORxoAJaIm7vEpQeTHbfpkOXAhFEKTXEllBFn1TTJLwf1lj+eQcgpHSE0Abd6TwGkwaNPBM9vZ8DWS
	3mZj7b0xrulgWUwKLDP3cCj3fxGndh6rV2kzFbAvlgdy/57/7Za9B2hHAJBD9FXjRSvqI34jiHCSw
	PozUxNzZO7jl8XYh7EnorjH8GHidZhLceVCtP2Xh03yj5DsHeuQH4A5iLXhpVjiab3YdkUgZBz1Qo
	BXcYe7jmk0YUrhHEccCBzDUnIwTelSJUx3sz43RAcK05LGnC3SFfd00UyE3o2DldVCmJM3U0mWJRW
	wPOY0nMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQGo-0006ED-Ba; Tue, 14 Jan 2020 17:46:26 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQGN-00062K-1Q
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 17:46:04 +0000
Received: (wp-smtpd smtp.tlen.pl 9959 invoked from network);
 14 Jan 2020 18:45:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579023954; bh=SYSW8lMBQEMkIK7NSIwuUpi5W6tkKvh+K6WqjJmeo+Y=;
 h=From:To:Subject;
 b=m7yddHMNqMKJIkpRytayxFB5j1ZkFg7BsB6qnRyKkz521vdG+ab8c0XyR0r8T5YCL
 Cwog+FLIJMEvtknClbipEC9ISRbAZ9YgmUdaBygvr7uD/YKXvwLDJg22BJyviKSqEO
 JkJMFVfsM6MLuK9igd8Xbk1rhVQ4fZfOuzRNhsW8=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 14 Jan 2020 18:45:54 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 18:45:43 +0100
Message-Id: <20200114174545.1514-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114174545.1514-1-tomek_n@o2.pl>
References: <20200114174545.1514-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 770f379f3e3c088fcfde68397f96d833
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wZME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_094559_616006_9830CFA9 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3 1/3] x86: image: cleanup before creating
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
index eb0db417a3..2838b3139c 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -60,6 +60,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 
   define Image/Build/grub2
 	# left here because the image builder doesnt need these
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
@@ -93,6 +94,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 endif
 
 define Image/Build/iso
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
