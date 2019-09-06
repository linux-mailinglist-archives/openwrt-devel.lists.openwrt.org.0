Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208F1ABBAF
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 17:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=whNQtVLfLoB/0UJWTbGkklLRXR9fkihcCUwt6ruaUn4=; b=RiTXDiBMrzzDiXUvYxKK6oQ1AT
	1PPTJdG/pOkxtThmIIZc6hA38yGacaN13GJN4QscCWudEhTJR6airEjp2PFONrB2cLcj6DWLsBgCO
	KreP8HrkIUM4hdo37rrQjFQeQW0g/QK625bCq06M8Td+vzVz5pg1aD8pet+mbmhiaHN1JUYvQ3mh1
	shXTE7/2VKd0jFGvoXHPQZWtH26Ploeb/FRLDDoOKlPvnTEL35IURpnioIy+CikCg40pRCkvg1noS
	O/4te3CKIVVs6xd41FBwAQai5/yGxuL9C6Or6ubi4r+BZVUNHxxpw00ACylBf1b9hE63X+rRgGLy6
	McLNHUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FkQ-0003dh-NU; Fri, 06 Sep 2019 15:02:03 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fjn-0003BI-AH
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 15:01:25 +0000
Received: (wp-smtpd smtp.tlen.pl 32503 invoked from network);
 6 Sep 2019 17:01:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1567782079; bh=xSakmpPvygiAOzeEwx2W0ZqbFkX91BlfkRLbliAE89U=;
 h=From:To:Subject;
 b=HrR/r20utQgnDSD89O0xA3RdBSGi8fF+AFzkj8XsRsbq80YGuN+xPh6Q17UIlUnfl
 HOUJUWhp5syQKPGMopXX9kcK2gCxgqpmB2X5BIYmDKXZcsHi3hsQOYUzgnyaZ1Kofh
 BuhqT4ZoFAQByH9uEmsKTSRfgHSqpGJIb8niARMk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Sep 2019 17:01:19 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 17:01:08 +0200
Message-Id: <20190906150108.31098-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906150108.31098-1-tomek_n@o2.pl>
References: <20190906150108.31098-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 3d98fd397d355927292c8a3bfad7a852
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [ETGU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080123_517097_1F306A7F 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/4 openwrt-19.07] ath79: image: add
 supported string for routerstations and ja76pf2
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
(cherry picked from commit a45cf75eca4069f24bf5bba8f245de2e553f7f78)
---
 target/linux/ath79/image/generic-ubnt.mk | 2 ++
 target/linux/ath79/image/generic.mk      | 1 +
 2 files changed, 3 insertions(+)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index f9f74d0f51..ac3b935900 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -218,6 +218,7 @@ define Device/ubnt_routerstation
   UBNT_TYPE := RSx
   UBNT_CHIP := ar7100
   DEVICE_PACKAGES += -swconfig
+  SUPPORTED_DEVICES += routerstation
 endef
 TARGET_DEVICES += ubnt_routerstation
 
@@ -227,6 +228,7 @@ define Device/ubnt_routerstation-pro
   UBNT_BOARD := RSPRO
   UBNT_TYPE := RSPRO
   UBNT_CHIP := ar7100pro
+  SUPPORTED_DEVICES += routerstation-pro
 endef
 TARGET_DEVICES += ubnt_routerstation-pro
 
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index a2b82cbf7f..3b7fdb7015 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -479,6 +479,7 @@ define Device/jjplus_ja76pf2
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
