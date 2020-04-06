Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D66619F4F9
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 13:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ixr3ngAFMP7xfa24OVV8xda78T5iLFjDfhmrpIlnAcE=; b=ejkG0/SC8v3Wbh
	ip+5LRs3Qynzqi8PmMrGh37ftxLH7xVBaHzYODvV6bU9T6fDJVso2Lw7FW6ECtRE5iT9YUqec9nFf
	gbk5RmXCD3gVPx/rpYTvYH8PaD+UzMkSKteUs5Fzo9QvAwENoY1RaVxGFx5el2Pyou/41CUfavGdg
	DV36W/dBhXvsfaVeKJ+XaThwtdIgurYLFILYFUIIlIFYAFhzcEHDgQLQU1KK6H0mGAV9F+oofOXhm
	FFHUTs1Mz5H5fn49ew3YKMQi7PTiJcWxjlcKHUELXY+zwH9vxDvPJ4sfOGJK0VOP0Ft6clyN54fZA
	tR2XPtdqj6Tw7a/X0Hfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQBU-0006qO-6U; Mon, 06 Apr 2020 11:44:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQBN-0006py-78
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 11:44:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id x1so5805286plm.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 04:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNqCiwNmeAx7rhBFBURHPqzN05haXGsJ/u3CntbsnT0=;
 b=KTKJ3MabY6S7cU+yvlzbpgDpxM//4HuhDH4bod8g43OfpBdYgLRd8+uQ4STYrz4Ec6
 ihX7sLDWJ7/wx0UKiB5xhSRpGhScmUWDDd0rTKqvDVWttiJXJAmYOJtGBkvhS6iiOC2d
 HTjP7dujACVkLCGL/WGpy+SFHF+IhSjmYCsKBRf+I5wh8jV0IcvDghmZVWBSvsf3zSzg
 UQtNaF9gamPM33jblGeLvmi340w5UdYsVcmqCEP1khU+olXt+TY/R39dllhTn8/0xYKk
 RpMZFWr4Y/hAW4QYrQ7vmVLtlEVeH6p7cYDiA3VAqYz6FduQm4TVq9yj+du7adlAuteJ
 Of0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNqCiwNmeAx7rhBFBURHPqzN05haXGsJ/u3CntbsnT0=;
 b=UfHWH9xRxouMSTo3rI3AqV74CmvaXBiLl/bKWRfcg+cyAomkAqJ4t2Qw8CR4hCuHvy
 EGTPweL6/sDVp0m63PnYa3QyRvk9djdYjHLbZEH9rOabeDPSVXbqTjU0FhRHIu68x5mp
 s1yUWiq46NigAwAWxjxrxJfDTEuS0ciUK7ne5JOL3rFg7v+1CiytbeYbbgy2lItNA7tP
 kJ9Qd0OC75jpjdIeGt20TEp7e/u0L2GWBVGpExb/TD9D0mN8WAYC6BJHTOdNQvZB3O1D
 bCdye0KLFbQLEqE3mNLdYdnkGiWzjtvDR2hawQja3+8DesNQrTaU+Gp2Bcgg2UxibYQ3
 l6Zw==
X-Gm-Message-State: AGi0PubU/B6gFXeTr4qR/mj3urjbYp1lW6PCBQitcVaYgRbJfTgmfbi6
 VfWi5uUQm9YnkP4/R5bS0fyWcur0eNg=
X-Google-Smtp-Source: APiQypILUjeCcQqJBZMGp1En/Q2AlTsgphgNsCCrZjzNismisVADyDT1YYDdVhOi0gWDUvKtoAUDeQ==
X-Received: by 2002:a17:90a:14f:: with SMTP id
 z15mr25172578pje.137.1586173487648; 
 Mon, 06 Apr 2020 04:44:47 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:97c:b730:e34:5c18:4dc8:e8d])
 by smtp.gmail.com with ESMTPSA id h6sm4594012pfq.200.2020.04.06.04.44.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 04:44:47 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 19:44:28 +0800
Message-Id: <20200406114428.1189632-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_044449_261556_CD248D62 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] generic: spi-nor: rework broken-flash-reset
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Instead of resetting flash to 3B address on remove hook, this
implementation only enters 4B mode when needed, which prevents more
unexpected reboot stuck. This implementation makes it only break when
a kernel panic happens during flash operation on 16M+ areas.
Also silent broken-flash-reset warning. We are not dealing with vendors
and it's unpleasant for users to see that unnecessary and long WARN_ON
print.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

This patch is inspired by previous work from:
target/linux/ramips/patches-4.14/0053-mtd-spi-nor-add-w25q256-3b-mode-switch.patch

I was initially porting this patch to 5.4 for w25q256 rebooting issue,
but later realized that this read_op implementation is just two lines
away from a better broken-flash-reset support. I then chose to do this
because:
1. comparing to w25q256 4b_read_op, this only loss the ability to recover
from panic during flash read on >16M region.
2. broken-flash-reset is needed for devices with mx25l25635e anyway.

 ...or-rework-broken-flash-reset-support.patch | 167 ++++++++++++++++++
 .../302-spi-nor-add-gd25q512.patch            |   2 +-
 2 files changed, 168 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/generic/pending-5.4/481-mtd-spi-nor-rework-broken-flash-reset-support.patch

diff --git a/target/linux/generic/pending-5.4/481-mtd-spi-nor-rework-broken-flash-reset-support.patch b/target/linux/generic/pending-5.4/481-mtd-spi-nor-rework-broken-flash-reset-support.patch
new file mode 100644
index 0000000000..b2f73a5cbd
--- /dev/null
+++ b/target/linux/generic/pending-5.4/481-mtd-spi-nor-rework-broken-flash-reset-support.patch
@@ -0,0 +1,167 @@
+From ea92cbb50a78404e29de2cc3999a240615ffb1c8 Mon Sep 17 00:00:00 2001
+From: Chuanhong Guo <gch981213@gmail.com>
+Date: Mon, 6 Apr 2020 17:58:48 +0800
+Subject: [PATCH] mtd: spi-nor: rework broken-flash-reset support
+
+Instead of resetting flash to 3B address on remove hook, this
+implementation only enters 4B mode when needed, which prevents
+more unexpected reboot stuck. This implementation makes it only
+break when a kernel panic happens during flash operation on 16M+
+areas.
+*OpenWrt only*: silent broken-flash-reset warning. We are not dealing
+with vendors and it's unpleasant for users to se that unnecessary
+and long WARN_ON print.
+
+Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
+---
+ drivers/mtd/spi-nor/spi-nor.c | 52 +++++++++++++++++++++++++++++++++--
+ 1 file changed, 49 insertions(+), 3 deletions(-)
+
+--- a/drivers/mtd/spi-nor/spi-nor.c
++++ b/drivers/mtd/spi-nor/spi-nor.c
+@@ -616,6 +616,22 @@ static void spi_nor_set_4byte_opcodes(st
+ 	}
+ }
+ 
++static int spi_nor_check_set_addr_width(struct spi_nor *nor, loff_t addr)
++{
++	u8 addr_width;
++
++	if ((nor->flags & (SNOR_F_4B_OPCODES | SNOR_F_BROKEN_RESET)) !=
++	    SNOR_F_BROKEN_RESET)
++		return 0;
++
++	addr_width = addr & 0xff000000 ? 4 : 3;
++	if (nor->addr_width == addr_width)
++		return 0;
++
++	nor->addr_width = addr_width;
++	return nor->params.set_4byte(nor, addr_width == 4);
++}
++
+ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
+ {
+ 	if (nor->spimem) {
+@@ -1259,6 +1275,10 @@ static int spi_nor_erase(struct mtd_info
+ 	if (ret)
+ 		return ret;
+ 
++	ret = spi_nor_check_set_addr_width(nor, instr->addr + instr->len);
++	if (ret < 0)
++		return ret;
++
+ 	/* whole-chip erase? */
+ 	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
+ 		unsigned long timeout;
+@@ -1315,6 +1335,7 @@ static int spi_nor_erase(struct mtd_info
+ 	write_disable(nor);
+ 
+ erase_err:
++	spi_nor_check_set_addr_width(nor, 0);
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
+ 
+ 	return ret;
+@@ -1621,7 +1642,9 @@ static int spi_nor_lock(struct mtd_info
+ 	if (ret)
+ 		return ret;
+ 
++	spi_nor_check_set_addr_width(nor, ofs + len);
+ 	ret = nor->params.locking_ops->lock(nor, ofs, len);
++	spi_nor_check_set_addr_width(nor, 0);
+ 
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_UNLOCK);
+ 	return ret;
+@@ -1636,7 +1659,9 @@ static int spi_nor_unlock(struct mtd_inf
+ 	if (ret)
+ 		return ret;
+ 
++	spi_nor_check_set_addr_width(nor, ofs + len);
+ 	ret = nor->params.locking_ops->unlock(nor, ofs, len);
++	spi_nor_check_set_addr_width(nor, 0);
+ 
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
+ 	return ret;
+@@ -1651,7 +1676,9 @@ static int spi_nor_is_locked(struct mtd_
+ 	if (ret)
+ 		return ret;
+ 
++	spi_nor_check_set_addr_width(nor, ofs + len);
+ 	ret = nor->params.locking_ops->is_locked(nor, ofs, len);
++	spi_nor_check_set_addr_width(nor, 0);
+ 
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
+ 	return ret;
+@@ -2557,6 +2584,10 @@ static int spi_nor_read(struct mtd_info
+ 	if (ret)
+ 		return ret;
+ 
++	ret = spi_nor_check_set_addr_width(nor, from + len);
++	if (ret < 0)
++		return ret;
++
+ 	while (len) {
+ 		loff_t addr = from;
+ 
+@@ -2580,6 +2611,7 @@ static int spi_nor_read(struct mtd_info
+ 	ret = 0;
+ 
+ read_err:
++	spi_nor_check_set_addr_width(nor, 0);
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_READ);
+ 	return ret;
+ }
+@@ -2597,6 +2629,10 @@ static int sst_write(struct mtd_info *mt
+ 	if (ret)
+ 		return ret;
+ 
++	ret = spi_nor_check_set_addr_width(nor, to + len);
++	if (ret < 0)
++		return ret;
++
+ 	write_enable(nor);
+ 
+ 	nor->sst_write_second = false;
+@@ -2659,6 +2695,7 @@ static int sst_write(struct mtd_info *mt
+ 	}
+ sst_write_err:
+ 	*retlen += actual;
++	spi_nor_check_set_addr_width(nor, 0);
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
+ 	return ret;
+ }
+@@ -2681,6 +2718,10 @@ static int spi_nor_write(struct mtd_info
+ 	if (ret)
+ 		return ret;
+ 
++	ret = spi_nor_check_set_addr_width(nor, to + len);
++	if (ret < 0)
++		return ret;
++
+ 	for (i = 0; i < len; ) {
+ 		ssize_t written;
+ 		loff_t addr = to + i;
+@@ -2720,6 +2761,7 @@ static int spi_nor_write(struct mtd_info
+ 	}
+ 
+ write_err:
++	spi_nor_check_set_addr_width(nor, 0);
+ 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
+ 	return ret;
+ }
+@@ -4726,9 +4768,13 @@ static int spi_nor_init(struct spi_nor *
+ 		 * reboots (e.g., crashes). Warn the user (or hopefully, system
+ 		 * designer) that this is bad.
+ 		 */
+-		WARN_ONCE(nor->flags & SNOR_F_BROKEN_RESET,
+-			  "enabling reset hack; may not recover from unexpected reboots\n");
+-		nor->params.set_4byte(nor, true);
++		if (nor->flags & SNOR_F_BROKEN_RESET) {
++			dev_warn(nor->dev,
++				"enabling reset hack; may not recover from unexpected reboots\n");
++			nor->addr_width = 3;
++		} else {
++			nor->params.set_4byte(nor, true);
++		}
+ 	}
+ 
+ 	return 0;
diff --git a/target/linux/ramips/patches-5.4/302-spi-nor-add-gd25q512.patch b/target/linux/ramips/patches-5.4/302-spi-nor-add-gd25q512.patch
index 3e229bcc1b..52eeb3545b 100644
--- a/target/linux/ramips/patches-5.4/302-spi-nor-add-gd25q512.patch
+++ b/target/linux/ramips/patches-5.4/302-spi-nor-add-gd25q512.patch
@@ -1,6 +1,6 @@
 --- a/drivers/mtd/spi-nor/spi-nor.c
 +++ b/drivers/mtd/spi-nor/spi-nor.c
-@@ -2238,6 +2238,11 @@ static const struct flash_info spi_nor_i
+@@ -2265,6 +2265,11 @@ static const struct flash_info spi_nor_i
  			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
  			.fixups = &gd25q256_fixups,
  	},
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
