Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A8D144626
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 21:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LbcmLL2AZycm7cHeU/iZ8CX3dTHcb23mV057ORqzSlk=; b=rsTH3YKKpbn7A8
	9MaMQEiD6vAoCX+8jgzfau0Q/SpG/zBU9pUDynzjgTTJ0nKJDCq7wt0vBLmZtqE4TF/2ocA2s/HJV
	m9blafwXZsWcFu5ex1hU4ThkcXTGM4Iv/ugg+68dGfKzKyz+c1MA0FPeDhOicuwfyfBr3zvJTetpq
	rVWhj2ejWg2jpHRI9peZldjCS7OvoH42g2C4U0J/u+V1OZhxtegJO3fuIfcS9Xz08ncve7km4/rOe
	/aCJ+os2ESTk8OKJJAKMkamZthCqKe9kqOxUkc+nWERhmXNZSLhHA+wnquKjQDFszHyMsEyU105JL
	tMyBaf59Xsiz7irDaesQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0bn-0008Ff-SG; Tue, 21 Jan 2020 20:58:47 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0be-0008FD-1P
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 20:58:39 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Ml6i2-1jLc743KhA-00lYbe for <openwrt-devel@lists.openwrt.org>; Tue, 21
 Jan 2020 21:58:34 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 21:57:51 +0100
Message-Id: <20200121205751.1810-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:xjInDjPSF66fSN8pKyQHqo9nI4EKb070hVp+4fsN5xvayyijJ2N
 /frWRAUZpL38e5kYHoorQdnoTY8sisnTLIuFI36vIg9RLbNxpsY7skXPoohfM24zs6bYc4q
 B8h+FwPwPORhPyVEom38azbXL17RYsEJQvdWEYorC4T5V/9SDexSB8imK5o77YMU6VLXV77
 7xl0LI9sUgj0j0ER5y8ng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n7zRD4TKwuE=:/SZoretH0+9w+WjyjhG7jh
 h0YTu/fgIZIWanTey2me42KZJpc4anXcKzAZNqX+AeeZkeTCIlJ3YDBJ1ua0occ+prcfSpQJ5
 EjK3k+KgNBhxIf8HIT1nOdpa7/zI5SR1KOIeY0c1GGsUcj7HHp9AeACrjdC1N5mV6VL4gM8G9
 Kom2rQG76JjgsV7avo+qHJcEBzd8rTy9SfjDXLJ4gBRsqLBJ4yZnBk8nu93P8rTpOsWA39zdS
 uTvqQ0op76IW3Z8n/rXIoD08pTsHTXMSpirL7L2sZkNteYFqlxSoLxfaoeCkq+TMsHdxhO0PV
 DzIAL0Mrjan+bejgR/b6oqeUXftrcuAFflnQQzroKK7sYNHtWLvzLWxQIWX4OQLJc1aitIiUv
 0135STRb+JBlgjngQayVU1sv+v/pib3Z0QYVxTGxdAHMrb6mxg/KFICerP9bOXUWLtAPgYb8h
 INE5yhVtEI9BLJAdiOlBYyGg386Nk3UZgLN2560Vrfvt26ZTNtJ1nX/G4BAw3bF/FlwmiCQ7X
 RWrCxg0XsRLMeAUCFfOE0RMzbyfMa+bQ7okpWSS9DWLML6U1fyWjwQ/u7ChmMzggwYK9nBKMW
 MaJDg8acjclZf7rhiDt61Fk+CqauKsu2OOxYR6Y5AyZ89NAi7osk8be5uCUrrVYIPW+zF+Bs+
 emyDvyK+Nl+rfcf4N4LiaFojY/xGll7CmovRoum1a0D2RAvsyX/pTbausQ2ExhBc3fJFVXe7p
 YJl8YsgBpBtpQ6Ug/UAzkAPgAh5HzcJR9AT4GsoS97L+M8Yyfy920REqJ2mguSzrQ6HVK0425
 tvpASVNs6kUOEH9yfTbDcY58eDh61N9xu/8YLYLu4q9PtGXE0BXsXh3NCkv/ympyT5oxl2vyQ
 VkFPOVocKqyUO4dhJ345xtv3bzkcdGgjfXQpDqGhk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_125838_374377_BCFA9907 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: move lzma-loader to the end of
 available RAM
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

In certain cases, the uncompressed initramfs image will overwrite
the lzma-loader, which is currently only 10 MB away from kernel image
start. To prevent this, change LZMA_TEXT_START to 24 MB, so loader
and compressed image have 8 MB at the end of RAM and uncompressed
image has 24 MB available.

This is only enabled for ath79 at the moment, as there we can be sure
that all devices have 32+ MB RAM and TARGET_INITRAMFS_COMPRESSION_LZMA
is not enabled there.

While at it, use the KERNEL_LOADADDR variable in loader-common and
add a variable for the lzma start offset as well.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I plan to take care of other targets, too, and maybe provide a generic
loader-common, but for now this is limited to ath79 so we can support
the mikrotik devices there.

---
 target/linux/ath79/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index 34bd0a2490..34a0934c66 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -2,6 +2,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
 KERNEL_LOADADDR = 0x80060000
+LOADER_LZMA_START = 0x81800000
 
 DEVICE_VARS += IMAGE_SIZE LOADER_FLASH_OFFS LOADER_TYPE
 
@@ -10,7 +11,7 @@ define Build/loader-common
 	$(MAKE) -C lzma-loader \
 		PKG_BUILD_DIR="$@.src" \
 		TARGET_DIR="$(dir $@)" LOADER_NAME="$(notdir $@)" \
-		LZMA_TEXT_START=0x80a00000 LOADADDR=0x80060000 \
+		LZMA_TEXT_START=$(LOADER_LZMA_START) LOADADDR=$(KERNEL_LOADADDR) \
 		$(1) compile loader.$(LOADER_TYPE)
 	mv "$@.$(LOADER_TYPE)" "$@"
 	rm -rf $@.src
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
