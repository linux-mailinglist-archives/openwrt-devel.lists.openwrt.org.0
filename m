Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB883264
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 15:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l3c8FsAuy49c1j2VnCteNVmFlSr3xD9Etm0txu1W5Ac=; b=EIdckl5lnk2WK5Hd4Y35V6vmtw
	NG38EJNGUjPrFxnMBJbWM1/S1sGl8oA+/Cr33L94+/abkwWDEHXz1nfyD67PrifOI5tTGixJdu9gC
	qUvuXFNaCPHC9nydIer/dYyKdia1KnO6qJcjoruRf2ZNGlrpE3ZpAfJv6yGRabpgh2xqYo5C6bTno
	Gc82q4E1uS1CMes4FIg8Emutigi4ZsrqTUGiJ+h3hT3LTMXZU6aBaIvfL8/POLjJ8PDgLPz59JNXs
	UD/3VnIxYA6mpUzeQKR8q2hItpbwYud/vqDwoKX7rvV/NjXVpttlt62QNiTha4P0OJdugvdqTkGgA
	fHqwVSHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzFb-0005gY-TA; Tue, 06 Aug 2019 13:11:39 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzEk-0004v1-AV
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 13:10:48 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mt7st-1iAAjy3RUn-00tQLj for <openwrt-devel@lists.openwrt.org>; Tue, 06
 Aug 2019 15:10:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  6 Aug 2019 15:10:39 +0200
Message-Id: <20190806131039.51484-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:e1m3Oi1QdzZZMjwzduUx4Oc9/CVbC66WuOQkD4uFRXUas6XYxwW
 NTsZYbVaLgBYnxM2A1wlaw3eSyFFYI0qpXXDKiUHv/S2c3Fdb+FxPovE6DFqZX8WDEe/ge5
 eav5vnhEOWaD9x3H3nVFZ/XtqTyBI9RqNEcL8AEk7k/XyKGWGrMKBEPToRzv8Zh/kY+oATj
 uOaoYCMILDwOLdqM5c/0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yp5Le/9RqpU=:hqox866r1rCLw6V65xXmx9
 HwQFI4MO3TFEI6mkWeAby7D2ETYPKIAnwL878CWvX0pfjQ2D1PLXWwHhHo71l9/Ei/irejNmi
 gFo8G0BWp+tEjNE76OUXZnJyEkOP3Yug/PRLWY8UCbbQl5YGlXfjY5fBqv9xfW5EwPW/8biY7
 saDHq8D8hGRsdE5//9hbi9xqVTeL+rPK5okIJJliNEDGGCVADCiFlmQhmqCJb9tU5f2RAtVWC
 /pLSteMrCRCwD2QmHFIhICUpZWM9A+v1Qquut63vs2NzF5gdYsK90xrqsLM+kcfY7rMahvZmC
 5//yRenqSs4XOpZO0sedx0A4f45XzSoQtFLGCTEyCFJmUurax9W7axYIazDtTt8sb/p4dG59S
 OJrRVaoYH00Hwu3eIrOi1pCKcvpONfhbH6sY6Soe92VXL920KNJKt1F2Q2q558aP6N2uuNWzF
 NV1GBti/+U3sd299Jdtkxex43dF36VUSTOuUoaN/1qy75zgWBgn/FfmD4OONApSgx+HcuBtrC
 lV/JaBMb738CcST40231cEyAdfdGzd9pb8MbMSpT5z7W+4cSSv0KoCAvI4HSj3oi+w/d0FTBw
 1J9R5odP9n4+mDXNQm1NjYm/LO78QMbUSlLK96eGxcucZhO0jk1SmRLaK7EeyQFuguwJaW3U/
 BfxmN2GcHHXKf8uzCxdJwkiPBm28yXoYCQDbplxiWqStH1JHT9fJlb4UKGqxl6VYbY4bW6tke
 lx/A637Sq3ReWIrGKSvsj+nH2SI0tTxTskBjsPubaDfikZFWEX8qPr+5vFw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061046_696958_BBD0A012 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: fix remaining IMAGE_SIZE issues
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

This fixes the remaining IMAGE_SIZE issues in ath79 target.
All devices in target have been checked, so together with
subsequent patches this target should be "clean" afterwards.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic.mk      | 2 +-
 target/linux/ath79/image/tiny-netgear.mk | 2 +-
 target/linux/ath79/image/tiny-tp-link.mk | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8009582778..dec5f1c03e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -185,7 +185,7 @@ define Device/buffalo_wzr-hp-ag300h
   ATH_SOC := ar7161
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WZR-HP-AG300H
-  IMAGE_SIZE := 32256k
+  IMAGE_SIZE := 32320k
   IMAGES += factory.bin tftp.bin
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
   IMAGE/factory.bin := $$(IMAGE/default) | buffalo-enc WZR-HP-AG300H 1.99 | buffalo-tag WZR-HP-AG300H 3
diff --git a/target/linux/ath79/image/tiny-netgear.mk b/target/linux/ath79/image/tiny-netgear.mk
index 67ef28c9cc..2f17d79757 100644
--- a/target/linux/ath79/image/tiny-netgear.mk
+++ b/target/linux/ath79/image/tiny-netgear.mk
@@ -4,7 +4,7 @@ define Device/netgear_ar7240
   ATH_SOC := ar7240
   NETGEAR_KERNEL_MAGIC := 0x32303631
   KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma -d20 | netgear-uImage lzma
-  IMAGE_SIZE := 3904k
+  IMAGE_SIZE := 3712k
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
   $(Device/netgear_ath79)
 endef
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index a2d598fb77..4f358a8657 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -13,6 +13,7 @@ TARGET_DEVICES += tplink_tl-mr10u
 
 define Device/tplink_tl-mr3020-v1
   $(Device/tplink-4mlzma)
+  IMAGE_SIZE := 3840k
   ATH_SOC := ar9331
   DEVICE_MODEL := TL-MR3020
   DEVICE_VARIANT := v1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
