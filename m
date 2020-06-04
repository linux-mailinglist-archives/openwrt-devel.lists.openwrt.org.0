Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA321EDC5C
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 06:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ll7DhiYx7EqlhIqzhFK99DYhXj7BGqwpYdooAYkkEWg=; b=SwPaw4GDJMiNi3
	hW7gcGTTtJoDLHqsZ1zYI1a+bQZHootCLb3nEEcbPp6UHHFc9HS+kocLBMCc2ShJHJwveU5MNP3+8
	NrSabWQots0qTJlnFEWjbgqWaHNaQHRB1t9/EH9dSqwiWxp8iyTeadufZqpY7/5+Jv4dq3RpbNVuG
	oFscc4qFD0oyQ0yaGofDf2JTz6k5ODVNKQIQIqJFXwJtG1JP+pCGL4TJ0EkebdvQf7/IH4VpuRNWL
	zByRrnjxIqdQbbLrvIXssMeJ8eQ2X6QmohgMG6lfyPNmVwmmtlrhSFtqZmUQ2NZo/rYGFHuhitjWZ
	7ChdY/go1xjG0eYoCBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jghX4-0007kb-UC; Thu, 04 Jun 2020 04:31:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jghX0-0007k9-Qr
 for openwrt-devel@bombadil.infradead.org; Thu, 04 Jun 2020 04:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=lLahCkjI27eMRdd8yVw7xFqdNdu2F8UcavFP3E+3fGY=; b=SCXZAZWNXXuoTSW8HKexkUnoHo
 0qZurpJPcKa26XeVTNFI6+vTtvAK+4++UVmZInW2WehLpfWhrCr03ZmEtpQbmB9O64B+gCyDxYTyr
 g3WOnyZ6BRrqzcg8wtvD4KeedzZ7YTFNp9uWONa1bIrqywDuXZV+PY0H4U4oWwmC8cDDRE6rAqtSj
 pLyhu9azrXVFw3LH9bb3HM7ziBqFW4UScQw9YZtiYN0fs4X558uP5KbR/k0CVAq2VleYapBOmPsq8
 O+MasDQ0JcElFD6kxbtT1104J80zmwwn6t0hueR4PBmMSQlEp27QvAGSERZ1aDHkT/LVxpjFB4ji8
 J98mcqnA==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jghWq-0004Uh-NS
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 04:30:59 +0000
X-QQ-mid: bizesmtp18t1591245020twe63kxd
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 04 Jun 2020 12:30:20 +0800 (CST)
X-QQ-SSF: 0140000000600070I690B00A0000000
X-QQ-FEAT: c11OAn2KwFOla9EkXhF/KMqdSYzxXmnHfkPveEVX9I+XGJMTLaLK98XxuxyX8
 qIey9yjnirMYPc0xW/fEhMjL1nOM4gEdcJS5RM2Lr2HoH/HmlFQ4qBZb9hh9KuK+dvaNjUo
 HePafDrCaREOPpmA6rSkaiT2Ggu1ftleGA+D4J5R2hNcl00NwGB0yi5GX594UEdAB7nBdET
 //p6fBStqlXr9aA0gXX6HeN6nODc/LtdK8brLY2IE42Qg0OHzEDlkO/U9azPCp14ILq+9IL
 sQVg/dTw6ambYtYcY+WFmfFo+HfJFZps+uMdkMTH8Kg1qngvN/eXjDi4moTDEJQvvRkVS+P
 7/yzjr2wpaIeKqP7CPDTE49Ma557A==
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  4 Jun 2020 12:30:19 +0800
Message-Id: <20200604043019.6413-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.206.16.166 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mvebu: remove Linksys WRT and ClearFog Pro
 SUPPORTED_DEVICES
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

A direct upgrade from previous swconfig version with incompatible
settings to DSA will break the internet.
Remove SUPPORTED_DEVICES so users cannot upgrade directly.

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 target/linux/mvebu/image/cortexa9.mk | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/target/linux/mvebu/image/cortexa9.mk b/target/linux/mvebu/image/cortexa9.mk
index 4c7bbcd758..a7b1083ff6 100644
--- a/target/linux/mvebu/image/cortexa9.mk
+++ b/target/linux/mvebu/image/cortexa9.mk
@@ -65,7 +65,6 @@ define Device/linksys_wrt1200ac
   DEVICE_ALT0_MODEL := Caiman
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
 endef
 TARGET_DEVICES += linksys_wrt1200ac
 
@@ -80,7 +79,6 @@ define Device/linksys_wrt1900acs
   DEVICE_ALT1_MODEL := Shelby
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
 endef
 TARGET_DEVICES += linksys_wrt1900acs
 
@@ -93,7 +91,6 @@ define Device/linksys_wrt1900ac
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   KERNEL_SIZE := 3072k
-  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
 endef
 TARGET_DEVICES += linksys_wrt1900ac
 
@@ -105,7 +102,6 @@ define Device/linksys_wrt1900acv2
   DEVICE_ALT0_MODEL := Cobra
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
 endef
 TARGET_DEVICES += linksys_wrt1900acv2
 
@@ -116,7 +112,6 @@ define Device/linksys_wrt3200acm
   DEVICE_ALT0_MODEL := Rango
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
 endef
 TARGET_DEVICES += linksys_wrt3200acm
 
@@ -129,7 +124,6 @@ define Device/linksys_wrt32x
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
-  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
 endef
 TARGET_DEVICES += linksys_wrt32x
 
@@ -227,7 +221,6 @@ define Device/solidrun_clearfog-pro-a1
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
-  SUPPORTED_DEVICES += armada-388-clearfog armada-388-clearfog-pro
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
