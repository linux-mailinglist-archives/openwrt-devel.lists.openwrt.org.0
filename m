Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AF99B156
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYTsfC8zO7cZKgpav12BS1kkBvuyVX9YxHKdUeHB3eI=; b=omntAwRPF06i1Y
	KjRi+15Vf4hKKYiBYaJXQXP0TMe9vosTQMzXIeQbDM/WCoUSWPlF0tYJ4IwUqxvpIkTZi3bbiyFCJ
	TpfAc9vLqWW1Ijy8smDLYb/qtxPIEF74TjALrBw6B04UHi9N5FiXuQ8Kex0Jy3Er2WLGkkIB5kRIO
	ZVlul9ApiWtefJd+4twsuV5xslcMoFkRYfL7p6gD7r849hvhDiN9XI0F4Hq3i4Ok/SRIy4Xlg+H5Q
	uFgh+NFV6dp81lLkkrcejNh139mrMs+or3AsZQAkT5bN1kOJcOViPpIk2IB8W3LXFc3Z+ETODi7xK
	Ivg61CRaFu+e/6E9xrIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19ym-0007XD-LG; Fri, 23 Aug 2019 13:51:48 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y3-0006bN-S9
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:05 +0000
Received: (wp-smtpd smtp.tlen.pl 15390 invoked from network);
 23 Aug 2019 15:51:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568261; bh=pUVDW1+4GlMVL8RBYkIPEF2a9jTfwZZgrvtdCkU09co=;
 h=From:To:Cc:Subject;
 b=LYW1PFt9ibDN1jMwrLRn0N4CWoTDyRr/Fshxlcoya4PkigP22KiC0TPVlvRBLDfKJ
 j9uFMpfJFWv2N9jdGSFbUu48AXMJDUfmxyEBrqa+dB1ZzRL1qAHh8Us+q9312r2FrI
 EBfrOjeNf/e2Y482J/khPAQa0cQB0tUjUsKIsIs8=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:51:00 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:47 +0200
Message-Id: <20190823135052.2305-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823135052.2305-1-tomek_n@o2.pl>
References: <20190823135052.2305-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 79a79e29dedd11e4982573f297584f11
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0ROl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065104_080019_FC728186 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/7] ath79: image: retire combined-image
 for Adtran/Bluesocket devices
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
Cc: Brian Gonyer <bgonyer@gmail.com>,
 Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

During review it slipped by that these devices use combined-image which
should never be used for newly added ones. Therefore switch to
sysupgrade-tar generated images introduced in 8f6f260 ("ath79:
routerstation: prepare to use sysupgrade-tar format image"). The
sysupgrade accepts both images for now so no reression should occur.

Cc: Brian Gonyer <bgonyer@gmail.com>
Cc: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 6f1ad5b708..45a1baa632 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -108,7 +108,7 @@ define Device/adtran_bsap1880
   IMAGES += kernel.bin rootfs.bin
   IMAGE/kernel.bin := append-kernel | pad-to $$$$(BLOCKSIZE)
   IMAGE/rootfs.bin := append-rootfs | pad-rootfs
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
 endef
 
 define Device/adtran_bsap1800-v2
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
