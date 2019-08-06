Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A60183262
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 15:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iAxZxhdw3JPKox7GduNg69NYemjQIWO5WhNrIlgA7Jo=; b=XDSCOHtDn15YtC
	6PxAbYoco3ByaTi5EhqyedkqiMRlMUu7eowkesJ4ZS4O4TrBrmRvmBwbwLun26bkNk2AkKt8SVgCF
	mEhDEFlJW9i85EOvIM25jY7v89tV7Gf+hO5NIxFRVpB52SrK8tYHgx5DdXYq0yKAS7Rnof4whhbXQ
	V53oNAPmWMXWQth7hY6F64QHBon0aYOur5ZJc4IVVqvplS8fPYDb/3zuw00TGR2PiwyGEghwN6j3x
	bSLt72pSQWRpxalIhpQAfeR8ZIm5DC59E63YxUTyDqUwiSwT1pzPzzoDOMWV7rRnrZVTB8Qb/gerV
	G7+zLlPnhfFHPoNdx7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzFM-0005PP-BH; Tue, 06 Aug 2019 13:11:24 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzEj-0004uC-LY
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 13:10:47 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mqrjz-1ihCE62AEr-00mw4h for <openwrt-devel@lists.openwrt.org>; Tue, 06
 Aug 2019 15:10:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  6 Aug 2019 15:10:37 +0200
Message-Id: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:j2G63tVYeIZr/o1PF9wmztuxEjCBLQJLUUJn+QowN5C6iM7Uyso
 Vn4FnDsO02atuodY8n7K7gxfZbzYuF4pywD8NbPi5trFWIln9Y/micNVTj5ZeWEYZEBiNae
 dpjVLxAvjs+3ovPFjf/dP9WS+v2MufmEVKPG1Pb92eB/nuc+Ai/FjFXQghk1Pvb+dmomTkq
 zHGHkOoR6dNtw20Acwnnw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GJVVr3PBZ54=:AReEIcumOfZHliyTBHYa2Z
 BZbFXPUssqoY+9UE0QgIOKWMRqN1nTvWZknT//gi5XXrrHkjHwJmX9UhcwD4B2J1wEvQ9Rh/N
 6s8xvSxlGcK9LvkW92NZMOOEGIddkRQ71yh2USqmw+W5s1ZE1bvZDKAAor7+KPXA2g3i2Z+/h
 Qm/OFs1GnMsliJI69+1/K6ty4VPQm76QjTzs3hz//HGfRvWXRWUlaKJgCqgOMThg07laZoyv5
 2YWExqtpSIjzFTh0psFqR3JV4hP90Y8T/vh/Yn6qlNlOY2I6g0ehvFa80AWuoZyMmWG3hMNzU
 XPABK6GmyROFEa/RdsrCnKtYdAboRx436ZHHr8hkNGzOxt9j/PTt0OhuSFQgKpgZMESyf0RWa
 xX0FzIZpqBb7mTX9aR7YOl2BLFrtNqdq9p3hB1Fz2SL9kL3MvrzSq1tNqcx5XVE5QqIZT//4k
 0wA/uJGGJ8+k+zscC1c6fzIIUuOEdoTOYqJH50EzHx5Se2lud6u3xdCvJTv5FOTWk6XgMZhpD
 2QQ3aHuzYZDnZJ3K0cDuLq65mPvsLvjvjdBxVb1ueondiB2B4hREZQrrDQ7sw+3xunr0H9Yrs
 wvSfFQx3ehY5cTXIwHseSIYvvaciVsLFP8N4VzYZuYwprL1S4pkLiTyvGD4ol1bL2EFLom8oy
 RMQcnswEjxk7PhSSRmHO6wM/kwtwsmkbyauU2EZ7ltvhQfCDKC7C8K6xoG1PlaWKUb5bIWpKg
 u4zTpPd18cERZbIUeFraUEzPfv9iOWRERYUBeCaoxx8a5/+90lN1xcF7tBE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061046_046068_CD5DD690 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] ath79: tidy up and fix IMAGE_SIZE for
 Ubiquiti devices
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

This addresses IMAGE_SIZE inconsistencies in generic_ubnt.mk by:

1. (cosmetical) Move IMAGE_SIZE out of top definition ("ubnt"),
   since despite two all subdefinition have different values.
2. (change) Fix IMAGE_SIZE for ubnt-xm and ubnt-bz (7552k->7488k).
3. (cosmetical) Move IMAGE_SIZE of ubnt-wa devices to parent node
   since all have same size (it is defined in parent DTSI ...).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic-ubnt.mk | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 6db083861f..0dfde6915d 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -36,7 +36,6 @@ endef
 define Device/ubnt
   DEVICE_VENDOR := Ubiquiti
   DEVICE_PACKAGES := kmod-usb-core kmod-usb2
-  IMAGE_SIZE := 7552k
   UBNT_BOARD := XM
   UBNT_VERSION := 6.0.0
   IMAGES += factory.bin
@@ -47,6 +46,7 @@ endef
 define Device/ubnt-xm
   $(Device/ubnt)
   DEVICE_PACKAGES += kmod-usb-ohci rssileds
+  IMAGE_SIZE := 7448k
   UBNT_TYPE := XM
   UBNT_CHIP := ar7240
   ATH_SOC := ar7241
@@ -55,6 +55,7 @@ endef
 
 define Device/ubnt-bz
   $(Device/ubnt)
+  IMAGE_SIZE := 7448k
   UBNT_TYPE := BZ
   UBNT_CHIP := ar7240
   ATH_SOC := ar7241
@@ -62,6 +63,7 @@ endef
 
 define Device/ubnt-wa
   $(Device/ubnt)
+  IMAGE_SIZE := 15744k
   UBNT_TYPE := WA
   UBNT_CHIP := ar934x
   UBNT_BOARD := WA
@@ -71,6 +73,7 @@ endef
 
 define Device/ubnt-xw
   $(Device/ubnt)
+  IMAGE_SIZE := 7552k
   UBNT_TYPE := XW
   UBNT_CHIP := ar934x
   UBNT_BOARD := XM
@@ -128,7 +131,6 @@ define Device/ubnt_lap-120
   DEVICE_MODEL := LiteAP ac
   DEVICE_VARIANT := LAP-120
   DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
 TARGET_DEVICES += ubnt_lap-120
@@ -137,7 +139,6 @@ define Device/ubnt_nanobeam-ac
   $(Device/ubnt-wa)
   DEVICE_MODEL := NanoBeam AC
   DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
 TARGET_DEVICES += ubnt_nanobeam-ac
@@ -146,7 +147,6 @@ define Device/ubnt_nanostation-ac
   $(Device/ubnt-wa)
   DEVICE_MODEL := Nanostation AC
   DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
 TARGET_DEVICES += ubnt_nanostation-ac
@@ -155,7 +155,6 @@ define Device/ubnt_nanostation-ac-loco
   $(Device/ubnt-wa)
   DEVICE_MODEL := Nanostation AC loco
   DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
 TARGET_DEVICES += ubnt_nanostation-ac-loco
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
