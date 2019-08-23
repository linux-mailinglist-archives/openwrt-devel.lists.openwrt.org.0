Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA49B15B
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=om24wVUX7fPIoAqBOTlpJDJ5Yx8RRBeXXMzlEjl//ig=; b=BC0tTm8uZexxMsvD8iWeJmaS66
	x/o90s89UnXR8zg6lcf9ZipCBFEwN7OcdLTSGu+l78ZoLmZUfo6VZL00aQ7Xazgl7bVCRdUqsTVuM
	p7/HrWEc1vIVrC0DqWja6qIcucJuTIpVdvMIfeo+XIuK8TVSU4mvQP591baphKUhbPrWoIASsBgEd
	xbA5XhFMZuWwCXSmU5qY7LyuAmsxjrHZ+6uRMBomJV3pesrqjOHirfe4Z0P9QdoaVH3tMF/zPsszr
	NwAMraay36KRjyNInQg9B8OO1nGexmeJnMT/WYC3krwJFhye/Vq38GtV+vaeGFZ5c/M6zXncYFLOT
	Y8vhB9HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19zL-0000B1-Jb; Fri, 23 Aug 2019 13:52:23 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y7-0006eu-VY
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:09 +0000
Received: (wp-smtpd smtp.tlen.pl 21598 invoked from network);
 23 Aug 2019 15:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568265; bh=TZUiuAzm+1ya94tYB79Hd8qPsMms/+x+7w5nvNtpKIw=;
 h=From:To:Subject;
 b=k2qvqmQC7ILmnWTgIf9ALAV3FyJveKBxTT3APBf8tHcPNoAlImBdaJZVUTz17h66W
 NHDiAOe8bt5JerASx0Gxkq2Ai3tgkKqtowuNVLOeX2IvkrLNT6GJVSFAdB0r2g7Qrd
 2mmnprknWzQ6lFy3EvCxBNy8JTNl72n4jJGoWopM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:51:05 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:50 +0200
Message-Id: <20190823135052.2305-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823135052.2305-1-tomek_n@o2.pl>
References: <20190823135052.2305-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: fedbe09ff5a895cdd7ab4701f6f5f843
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [scNl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065108_251125_97C5B125 
X-CRM114-Status: UNSURE (   6.48  )
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
Subject: [OpenWrt-Devel] [PATCH v2 5/7] ath79: image: add supported string
 for routerstations and ja76pf2
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

Now that the md5 check is fixed and metadata present, sysupgrade on
ar71xx will complain about device not being supported by the image.
Since the cause is not matching strings for supported devices add them
accordingly.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic-ubnt.mk | 2 ++
 target/linux/ath79/image/generic.mk      | 1 +
 2 files changed, 3 insertions(+)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 3af1f2676e..c696aac3a8 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -223,6 +223,7 @@ define Device/ubnt_routerstation
   UBNT_TYPE := RSx
   UBNT_CHIP := ar7100
   DEVICE_PACKAGES += -swconfig
+  SUPPORTED_DEVICES += routerstation
 endef
 TARGET_DEVICES += ubnt_routerstation
 
@@ -232,6 +233,7 @@ define Device/ubnt_routerstation-pro
   UBNT_BOARD := RSPRO
   UBNT_TYPE := RSPRO
   UBNT_CHIP := ar7100pro
+  SUPPORTED_DEVICES += routerstation-pro
 endef
 TARGET_DEVICES += ubnt_routerstation-pro
 
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index c1cd347baf..b4e709de3e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -648,6 +648,7 @@ define Device/jjplus_ja76pf2
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 16000k
+  SUPPORTED_DEVICES += ja76pf2
 endef
 TARGET_DEVICES += jjplus_ja76pf2
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
