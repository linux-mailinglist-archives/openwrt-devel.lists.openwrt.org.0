Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7AD99F4D
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=om24wVUX7fPIoAqBOTlpJDJ5Yx8RRBeXXMzlEjl//ig=; b=kDzqbabSAVRxkLcXIeUopZc8Di
	OSHrJgli7AWHZb0p4QvXTkpvl63tArV5YBh0AaecPy4PhIPmJ07vPISzx1+M0WFcOws6aTMMe1gL8
	gufdAnVGQLtEYxjY5qo/PASk5k1EDd8B6aGM8dV4x5AuDztebY7dmz06O8AegQ1w7MGhwNm5l94aW
	o6D0qUD69FDOiAZQSSLJPY22TeXDMdzCE4mpKwwMW2hkSjREQHUTWYW4hqFdx88+RcX6EvU/wZPkU
	+n+AMihIQhKy5s6ZTmyxqok8IPiLDwNGcvphaMgohmAKvv680sNA0Qsg4jSTwIlX9APxl7VjJXsiW
	ePThcObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sKR-0004F6-VY; Thu, 22 Aug 2019 19:01:00 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sIv-0001Xu-5R
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:59:27 +0000
Received: (wp-smtpd smtp.tlen.pl 29321 invoked from network);
 22 Aug 2019 20:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566500363; bh=TZUiuAzm+1ya94tYB79Hd8qPsMms/+x+7w5nvNtpKIw=;
 h=From:To:Subject;
 b=WIaZr97s+JNOX4LiOlLRA8LxvuwLtuVfQVMC4zAFBYHVPzCN8r3Yklk6wQAK4+OQy
 0sAefXrNIVzhK0yU06ukL2IseHvzZGIPBMF06zGX+wOdoBbpelMwKRsvPyCNzZqPlZ
 Vt2ZEOC7V9mD2A2WRO6l21ShIVWMjvAlFZ3I9LKw=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Aug 2019 20:59:23 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 20:59:09 +0200
Message-Id: <20190822185911.12336-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822185911.12336-1-tomek_n@o2.pl>
References: <20190822185911.12336-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: e8ae894e5d33b1c5954e795b96f7bb01
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wUM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_115925_362254_B87B7C96 
X-CRM114-Status: UNSURE (   6.19  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 5/7] ath79: image: add supported string for
 routerstations and ja76pf2
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
