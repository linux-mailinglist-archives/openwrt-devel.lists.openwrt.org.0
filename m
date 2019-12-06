Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3431150BC
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 14:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VbsT1uQ7pvDyp42/l/0/gXYusM9s1DJW2yoi4eAhlig=; b=IeNoub60F6SI/t
	8SQDESuipK+qNezmOPtrCO0SoXnkyYwEMg3Iqm4tcfpUAHHN/FqGOjIup5MO18OGTHiuIh5bRWv+C
	HSUmg+gIsyoU5QUTrLy6FreRPZ9g9gmhSuf9dTP0+elcUd+YX3oOrLAe+Omb52b9FHXfbyOMgdVwR
	gynBNbszwIigKoGACFYzDX04QCA03qJVzGe4QFSs52D3WVO6THpyozJ5Q3JTMJyJMD7SxdDt+hMPp
	IYOUuqiP6p7e/CXhYaDRryj8Npr3qkw+R/5F7H9D1xMMWK12MOgtBBo4jyT4LACLFtHuBN59HezRi
	CGlsrLOFPLYBoThLUxWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idDG1-00009G-DL; Fri, 06 Dec 2019 13:02:53 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idDFt-00008Z-43
 for openwrt-devel@lists.openwrt.org; Fri, 06 Dec 2019 13:02:46 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3bjH-1hdRiW0OEV-010cQi for <openwrt-devel@lists.openwrt.org>; Fri, 06
 Dec 2019 14:02:39 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Dec 2019 14:01:49 +0100
Message-Id: <20191206130149.18409-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LTUPLwnDRPdnCzjWrHGaUrKqEKIJ+0aT/sWVnb2iqrSqErnLMfc
 hI8VJ4xSdI86JLT8fekJxn2M8MgF6W2gAfyZkbilsbG+tlMOixzQWX/eZ6P+fkc27d/8eTa
 t7FwHHUXTB4DIGJYH4nBKcNuD8Ne5w/0wkkqy4Q1cBVWAkWSV83RJGQCavwwS4TM7fMHieI
 J97tGVvgTBZx9YxAPSfTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EyGHxetwmGE=:QDClAQFkiJor/pBvyLeYpo
 oEqnqqgPGDk7WP97GEuj6O+FzSn0SuCjghIejsYiP0mBOfeXh00MATPTM3Zr43V8X80Gq6bAW
 /+a3TgOcV3oFtXhE0VOdrR0z0Tqo4PY/o2VQKSuOdqiSZlSleL0VAKCq4/DyT9JNYg5QUPX7X
 5aFIvdd1lCNgctcN4E2YfhqGjh6KpPTXvt7pq0N//jBaUSkPx1ssfzf6Ujn4OUZz0YasC1zOI
 K/iUWnf28Cf+nLhwhP7iJ3kfaYzhERgz2Ki2MKw/sXNF4Fe3RTklGRFda1TZf8FOccJ7y1WkF
 FmB6c+cPiaw25NBZ3E1cGwUKsjUMb8BbFBQgKpZTWxyw97dTKcixlkPucqtzSVRqYvH3mLhby
 S7udl30uwImOy80Dq8dav/OfQgvwvnv/ladhlEjYGwC8JGCCOObJCsNvvAfv81+5JcWJipbMw
 g2JHhGJTtZ7IAFdi6VT8/f7eyWaY9CFIyxtBPOzwmUbBn+QZou86bi+fjrYNry2YleJnYohny
 h+v+3Xs7tezTdHB1nfTcb4GRNobqcvsrQxi/9J/7nxTDQ1kK7o+Eoc1JQAUV1h0mM1BbI/qUR
 msOp/j/+zqyIxA5KrqjKIl0S2dUcilpAyfY0/clWt3nob1YllQqd6/SqBS3bWs3+bkvfw1J7g
 s0u/KRzZFPPqWc4KskWxoMY21JBCd72Axj6MhxpIzIih9AdK+QInVMOO41ZQYCya/igqa/6rN
 OeTkYh1VKF+5oX7FgFlM9l214ZzSk8hOs7QcZOsnLEP5EdWIn3n3NeWktGJ8vnzLi6fiRzabO
 QXHpkC3Ihat47gs7oYW04NNFzau9hbGwKtTSxWZg2KRC09Yg+RNJneUKOkNt7gCtK2oObQWna
 6sp5QuVTbfflARFeiLCKqNqiW/PmWN99yp3KLl5gk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_050245_453464_CF6253D6 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: redistribute UBNT variables in
 Ubiquiti image Makefile
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

The variables UBNT_BOARD and UBNT_VERSION are defined in the parent
Device/ubnt definition and then overwritten for most of the derived
platform definitions (e.g. Device/ubnt-wa).

Since this mixed use of inheritance and overwriting can be misleading,
this moves the variables to the platform-based definitions.

While at it, reorder the definitions to have order consistent, too.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic-ubnt.mk | 33 +++++++++++++-----------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index e75b9ea770..59c22b8af4 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -36,8 +36,6 @@ endef
 define Device/ubnt
   DEVICE_VENDOR := Ubiquiti
   DEVICE_PACKAGES := kmod-usb2
-  UBNT_BOARD := XM
-  UBNT_VERSION := 6.0.0
   IMAGES += factory.bin
   IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
 	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | mkubntimage-split
@@ -45,53 +43,58 @@ endef
 
 define Device/ubnt-bz
   $(Device/ubnt)
+  ATH_SOC := ar7241
   IMAGE_SIZE := 7448k
-  UBNT_TYPE := BZ
+  UBNT_BOARD := XM
   UBNT_CHIP := ar7240
-  ATH_SOC := ar7241
+  UBNT_TYPE := BZ
+  UBNT_VERSION := 6.0.0
 endef
 
 define Device/ubnt-wa
   $(Device/ubnt)
+  ATH_SOC := ar9342
   IMAGE_SIZE := 15744k
-  UBNT_TYPE := WA
-  UBNT_CHIP := ar934x
   UBNT_BOARD := WA
+  UBNT_CHIP := ar934x
+  UBNT_TYPE := WA
   UBNT_VERSION := 8.5.0
-  ATH_SOC := ar9342
 endef
 
 define Device/ubnt-xm
   $(Device/ubnt)
+  ATH_SOC := ar7241
   DEVICE_VARIANT := XM
   DEVICE_PACKAGES += kmod-usb-ohci
   IMAGE_SIZE := 7448k
-  UBNT_TYPE := XM
+  UBNT_BOARD := XM
   UBNT_CHIP := ar7240
-  ATH_SOC := ar7241
+  UBNT_TYPE := XM
+  UBNT_VERSION := 6.0.0
   KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
 endef
 
 define Device/ubnt-xw
   $(Device/ubnt)
+  ATH_SOC := ar9342
   DEVICE_VARIANT := XW
   IMAGE_SIZE := 7552k
-  UBNT_TYPE := XW
-  UBNT_CHIP := ar934x
   UBNT_BOARD := XM
-  UBNT_VERSION := 6.0.4
+  UBNT_CHIP := ar934x
   UBNT_REVISION := 42.$(UBNT_REVISION)
-  ATH_SOC := ar9342
+  UBNT_TYPE := XW
+  UBNT_VERSION := 6.0.4
 endef
 
 define Device/ubnt_acb-isp
   $(Device/ubnt)
   ATH_SOC := qca9533
-  IMAGE_SIZE := 15744k
   DEVICE_MODEL := airCube ISP
+  IMAGE_SIZE := 15744k
   UBNT_BOARD := ACB-ISP
-  UBNT_TYPE := ACB
   UBNT_CHIP := qca9533
+  UBNT_TYPE := ACB
+  UBNT_VERSION := 6.0.0
   IMAGES := sysupgrade.bin
 endef
 TARGET_DEVICES += ubnt_acb-isp
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
