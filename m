Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8AE1B141A
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 20:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4vSTMXtihjV8SR4jzp5taNDS+VEHVG1BxRkG4BjiFh4=; b=ooyYoqQpI10K9+
	izGrTvKDg6tjahAhFoA/eUzBV8Z8q3LuDcwqnHtCoBjfnFtYqaPROPyS+aIfxgxWeV71AIZ8NTdIu
	cWQUKAWBbMnO9ETdQiWJduXj4E9IOJNjVqkqc5TDS/RtBLEyAG590tiBaTF47XS3OVCSTVyBs/nb/
	9mvVNJFhNWBGIuWXB4qCgyHSaxjF6fCq/TSlYTSR86mGnsoFvjnJtbPav+gpN6TFjNJZptKmjG9Cw
	CDz7ZV3mgN4mmaY79YH9EqgmxK6htHyYN7TFU5omQAYCLX9graN0/xE18xUrohJ+1Rbf7noWWMAJ+
	15MfjHlCM19trzyVr9ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaug-0004qG-3e; Mon, 20 Apr 2020 18:12:58 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQauT-0004na-0T
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 18:12:46 +0000
Received: (wp-smtpd smtp.tlen.pl 4752 invoked from network);
 20 Apr 2020 20:12:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1587406362; bh=vkFJuUkDDosVoxkCRyHWcsVkDU00Nc7xzzICTrHMznI=;
 h=From:To:Subject;
 b=p14FHQMKaSP2cSGQyaVkNPF6mJwZP1GbzyENu6Ynupw/ikPvwukYAhB5cYrtBvh7s
 Kf2kFkboScQeQekvhqwcmxjQRf2j5CQj5p4Mc+vLf1kzc1bBteZzjAJO6gT0qhILnG
 31ideuMNifcgf/+ht9cEkmKrQk4oDMfjIlvZ18AA=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Apr 2020 20:12:42 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 20:12:25 +0200
Message-Id: <20200420181228.52873-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-WP-MailID: 6e97dc62f7ab163675d122b860221b24
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [kYKd]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111245_205984_BB08FAC3 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 1/4] x86: image: drop dead code
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

These are remnants of old image generation code, which now serve no
purpose.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/x86/image/Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 77516a4a9d41..72a4d66ad731 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -13,12 +13,6 @@ GRUB_SERIAL_CONFIG =
 GRUB_TERMINAL_CONFIG =
 GRUB_CONSOLE_CMDLINE =
 
-ifneq ($(strip $(foreach subtarget,$(USE_ATKBD),$(CONFIG_TARGET_x86_$(subtarget)))),)
-  GRUB2_VARIANT := generic
-else
-  GRUB2_VARIANT := legacy
-endif
-
 ifneq ($(CONFIG_GRUB_CONSOLE),)
   GRUB_CONSOLE_CMDLINE += console=tty0
   GRUB_TERMINALS += console
@@ -152,8 +146,6 @@ define Device/Default
   ARTIFACTS := $$(ARTIFACTS-y)
 endef
 
-$(eval $(call Image/gzip-ext4-padded-squashfs))
-
 ifeq ($(SUBTARGET),64)
   include 64.mk
 endif
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
