Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5E6D3C67
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oeFBImOTJMaHYqBGZG5Adi27vtnWtEWLJtZKxgVa/v0=; b=LP09u3qwRMlxy5
	CBzC/aJuv05DKJo6jlgRmVb+Lz/sbmkD47Kc2bNQtFpj99TJxGv/TSoU6BRKGeFE5OQQZU5lXZMhy
	h6C0UnvjtNNd5oCv+m6QSqf75mjaXJ/p2Od/Q4hZiakQbWIerZfUv/xy4cTL6KTrhxkgO9b7a9Flp
	Mc8EogFJx2f8fydKyturcMNjyLP91pQhVjTLOpeonto3QamvnpkG8f6wt8EyTxvFhInaTN5dLEyMJ
	UHbeDWpvgxuydJScft2u7J98OcO3wqFXcpLHGIYnbL/kQ/9yr/cChMDsk2iyBmbPpEkGcmsfQvFQo
	zvyIYPx8HPSY0vdh131w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrIh-00029v-44; Fri, 11 Oct 2019 09:33:31 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrH7-0000a7-8I
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:55 +0000
Received: (wp-smtpd smtp.wp.pl 28714 invoked from network);
 11 Oct 2019 11:31:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786311; bh=mR6sEid4jierohPZtYpIGdk0Tm86f7Vm3NpogrdU8f4=;
 h=From:To:Subject;
 b=JMYv0mqpbflIyE1+7TLRoC25wTlCe9hWJbrpBgFSzAwy/sokts79sY+p9PjYbcOCE
 HzqnBEuv+mip2wJY0EZJ+Lvtb/o3Fc0UZ6WWvb0EGduYvHeiQr2wqzc5Ho0mI7Rq8U
 7OM6kN7taVkWqIpfUFLcWUhgjyEgjkNSoBJSDqJI=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:51 +0200
Date: Fri, 11 Oct 2019 10:52:39 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011105239.36a3849e@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 68f4e33b50eae7f26ff11df3abdd51f4
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [ETMx]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023153_545394_5E75AAFD 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] image: add magic number option for
 append-uImage-fakehdr
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

'append-uImage-fakehdr' can now accept magic number as a second, optional
parameter (passed directly to 'mkimage' command with '-M' option). This
enables construction of proper Netgear-specific fake rootfs images
(required for flashing WNDR4300 for example).

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 include/image-commands.mk | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 1d0aed1918..5dfd6a2c2f 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -109,10 +109,13 @@ endef
 # append a fake/empty uImage header, to fool bootloaders rootfs integrity check
 # for example
 define Build/append-uImage-fakehdr
+	$(eval type=$(word 1,$(1)))
+	$(eval magic=$(word 2,$(1)))
 	touch $@.fakehdr
 	$(STAGING_DIR_HOST)/bin/mkimage \
-		-A $(LINUX_KARCH) -O linux -T $(1) -C none \
-		-n '$(VERSION_DIST) fake $(1)' \
+		-A $(LINUX_KARCH) -O linux -T $(type) -C none \
+		-n '$(VERSION_DIST) fake $(type)' \
+		$(if $(magic),-M $(magic)) \
 		-d $@.fakehdr \
 		-s \
 		$@.fakehdr
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
