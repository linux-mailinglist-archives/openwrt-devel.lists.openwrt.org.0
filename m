Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DE214F00C
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:47:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A+UCihGspFVL1halU+4uCNysf6+Oovwjoj2FMb9/BfM=; b=TCi/pJMOHkZoXkPc5s5DjXPMB2
	6hHPEZECY4tfRoNXtItei8LVpn4ieotIq0yXZct2Sn4w2SmHWZXz8b+EOqKE8QVaSU70w5tcaQTSx
	vfVHVtrqKjqtpuVd9ZkfuyB0EHu4g7T1r+jSOpbTywdv4Dvu0622IU3IOSjJULV21e4uSS2x/tRtq
	Y4WYiPbumWIFXygkdNmq2oRvlHPsAtNFZVrE1IdkiFEKl+jBMGgMWtuCan8W8/kBU+tnqFR22A0Au
	atdjKrmsf8kb1C8lXfOE0QpIei28N3WIw+74QlKX7zebehwuOnhkB1C1iBtmCl9iWdSpDHEGdcELs
	PnNn/FJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYWJ-00070i-6i; Fri, 31 Jan 2020 15:47:47 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVR-0006D2-Sr
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:46:56 +0000
Received: (wp-smtpd smtp.tlen.pl 9129 invoked from network);
 31 Jan 2020 16:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485610; bh=Ool/hS0xYMJf7SlVVXx7qSl7TbMg41xve5r6FQc3DLk=;
 h=From:To:Subject;
 b=Heg0NwGQBB5zKB530wfZXUFPenI5fIezWFh7eIOKvVX7hn+j0RmrHqN2OsSd1fJOM
 +NVpZYSdOEFbLYOWqiSzWuUmmfEakBwFDcCw1mByCOMp5r4UCTb9XvZGGDuUSD19P6
 OXZh1bBwC7DT1Q98Wetk0Vzw5bs7ErjrvpbKV/FY=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:46:50 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:15 +0100
Message-Id: <20200131154620.25773-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: d5f2967d13fa57a70f7b0ef08a110a98
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [kdPS]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074654_102004_104BB40C 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables from
 default profile
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

These variables are already initialized within DEVICE_VARS. Just move
DEVICE_VARS to make sure they are set before default profile.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index aeabffdca2..d9e4b1acce 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -75,6 +75,7 @@ define Build/uDPU-firmware
 	(cd $@-fw; $(TAR) -cvzf $(KDIR_TMP)/$(IMAGE_PREFIX)-firmware.tgz .)
 endef
 
+DEVICE_VARS += BOOT_SCRIPT UBOOT
 define Device/Default
   PROFILES := Default
   DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
@@ -86,10 +87,7 @@ define Device/Default
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   SUPPORTED_DEVICES = $(subst _,$(comma),$(1))
   UBINIZE_OPTS := -E 5
-  UBOOT :=
-  BOOT_SCRIPT :=
 endef
-DEVICE_VARS += BOOT_SCRIPT UBOOT
 
 define Device/Default-arm64
   BOOT_SCRIPT := generic-arm64
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
