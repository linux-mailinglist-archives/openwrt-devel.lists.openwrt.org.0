Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C9E89969
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 11:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QD4JOn15Hiaq/jOpei0VQ1/Chhryx8g5Pc+2fI8BraA=; b=jy3x5GUZf/61eg
	j0obwTWTie25jpcMmdz1fRgCcXf+vieZPaZy0kjfjcGuSccTRHrC1RUWp+acnZ0LwgTUEEIWb5hRr
	d6ek6W/wZwtForv66o1TxKm6wHHfO7m1MICNaStMN/3nSP+qs5dhUOB6uhrYvk7lyIsggcvyq2oRB
	TZ3J1KaHPbi75xRykT1DPSnzgT8j0T20MNzKvC8rKtYyb/0F8cy9VTGKa1HqyJUD0GbOe5/tEEI0s
	y7mJnnne5vKHVo2zTNvRuhs8xDH6m8dzDLTPSXwdFcmKs28x/sX9PZKhMP1dAecRXs4upryC2EekL
	l0pqWkV+YPkS+Z6cUM/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6Hi-0003hf-UN; Mon, 12 Aug 2019 09:06:34 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6HR-0003fx-Db
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 09:06:19 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2070440009;
 Mon, 12 Aug 2019 09:06:00 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 11 Aug 2019 23:05:36 -1000
Message-Id: <20190812090535.29978-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_020617_605286_A55DEBD4 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] image.mk: remove device_ from manifest
 filename
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

The manifest file is based on IMG_PREFIX and PROFILE_SANITIZED, whereas
the latter takes a string like DEVICE_8dev_carambola2 and sanitizes it.
This behaviour results in a useless "device_" profile-prefix in the
device manifest filename. Now uses *subst* to remove that.

Therefore this patch results more consistent device file names:

openwrt-ath79-generic-8dev_carambola2-initramfs-kernel.bin
openwrt-ath79-generic-8dev-carambola2.manifest
openwrt-ath79-generic-8dev_carambola2-squashfs-sysupgrade.bin

instead of a single file being called

openwrt-ath79-generic-device_8dev-carambola2.manifest

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/image.mk | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index e55ac22d0d..cc333052a2 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -106,7 +106,7 @@ define add_jffs2_mark
 	echo -ne '\xde\xad\xc0\xde' >> $(1)
 endef
 
-PROFILE_SANITIZED := $(call sanitize,$(PROFILE))
+PROFILE_SANITIZED := $(call sanitize,$(subst DEVICE_,,$(PROFILE)))
 
 define split_args
 $(foreach data, \
@@ -298,6 +298,7 @@ endef
 define Image/Manifest
 	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
 		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED)).manifest
+
 endef
 
 define Image/gzip-ext4-padded-squashfs
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
