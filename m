Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF82B5AF
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g/Lk/N19XnjIYKTpMpvv+SeCojYNF+3DxjtbwSKJLYw=; b=hU7jA061olaEekkIycCKHhK0SA
	70qRvYrEOZaxxLBIMYwax2AHRHLaLWJy+kZsgy5ea6P9/+4dz/79jrTPwJiFnAshH2kil6nHf6n72
	m9rnN5gbO+MN+Ra8dO0JUop4+S4p1TCDb8Im9l+WsKzc9tzVId99BJ5TAgjJsfGgVbrTGOl+QBSnK
	GHQ6K9pi6WjHHvQHuxyheXTX5mpC+NyLdptCwQ7Fe6fRRwOz2pl33Nq3RthBdNOVFOiurqM3A1YZF
	lgbgbiqtmc9MXlmZDgk5VL+ZU5fydmC/Kxd553C7pzkA+Usg7Ot+PcIetlp7dmTB60imo3loJt/3V
	yicGt24w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF1f-0003WP-Cs; Mon, 27 May 2019 12:46:51 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF1X-0003V3-Fn
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:46:45 +0000
Received: (wp-smtpd smtp.tlen.pl 13751 invoked from network);
 27 May 2019 14:46:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558961199; bh=ND4m0b1XZu0JgCC0PNT8fL7h9Hq9GbJoZF431QtHuNw=;
 h=From:To:Subject;
 b=v1UAcge3GtPoqmpGBolHav4G0cIPwB+0FuRWZfKn3MQbekgtyoF6SyhqFDwiIJidG
 FUuP5LXq8gdg+7R7RdaKJgxTzqAyroKm/sj3M4ChEC8eSO7BW346xt5etRBlz4dBOf
 7FOwzCWGecJ8sC1sqyARbEiUcjejumQ837q73G5A=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 27 May 2019 14:46:39 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 14:46:28 +0200
Message-Id: <20190527124630.5042-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527124630.5042-1-tomek_n@o2.pl>
References: <20190527124630.5042-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: bddfbcd337c422fc4aef70bcea8ff922
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [QdPk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054643_844371_B27DDF6B 
X-CRM114-Status: UNSURE (   5.76  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/3] x86: image: cleanup before creating
 image
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
index 84a3d88a7f..ca5fd72153 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -61,6 +61,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 
   define Image/Build/grub2
 	# left here because the image builder doesnt need these
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
@@ -98,6 +99,7 @@ define Image/Build/squashfs
 endef
 
 define Image/Build/iso
+	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
 	grub-mkimage \
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
