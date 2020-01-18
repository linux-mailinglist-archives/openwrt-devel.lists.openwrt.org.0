Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D51214156C
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2JsrYyhi3qZcqnUwndvd6C6Iw7PnAY9Q0TLr1YIWITs=; b=QwuRSK7QpOmGC44lL342IzhBta
	RYm+gjHTe9p8l16sCyBtEVclL2kA16CKMs5oqvy49BUyIAa7y5Teo9wrUufDVkb6eqVsDyPPcGuJr
	swCVrTah3Cw5hVMhtpSRppfJ7bQZkc4nntK4NpmIYxmKfbyRBOn+D0lodRfDF+TWCjjO+TjtyO7aS
	zP1MFWkE5VyiX7W1NzQnE+MgqQpVa91uDngXdGfv27bW4WZqjQ/A4qWW+9DrJDGtHkgVekUDM3bRU
	7WdQzsg+xrBGuk6MOnR+Fi4LF7Pyo1IKlyRCGfBRuXmLqeEqPhGyhlkfdB9F+8qG2nwmN9l488GF/
	SQE05lLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscot-00076r-Le; Sat, 18 Jan 2020 01:22:35 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscoP-0006iu-7a
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:22:07 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N9MlG-1jgCeD3EJw-015H7i for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:22:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:21:14 +0100
Message-Id: <20200118012115.46148-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rpl6g5c4OQGPMgCwwibjJrbcPjUPN/VYCWwd0brqFnsijVc2/3x
 rPDCckvNPGoT0lMd7a+TnN/AUb5aCuxqAst62SQe4KgTpW6GAQu0wUmKj+KppXN8+KLK7/9
 bpt6vkehebJjq83rlYsuVN+DxcXlITdEEfuWjiOnIbBZRQ5R9LPEXxt6/iDbMWjmZjHdyPO
 ZIHF0bXRdSFgsD8YLHTAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l7OYnx7QW1w=:VOJyasswLypJp5OWEykzA0
 pvlly/GWi6ZFRmfyGsWq2k2UFYyzZwHRCRsj6QQrykwZB4CZV9QMcMdvf3lx679GxbE/fEQnL
 Y9YWi4RiGgZAPVJpmvPMoN/dPUdH3OV5VgGrUsOHX5lA2Wr4oAZIE23cL0T9ETT4uXUU3Rrjx
 6+zmCIbhxZlHzbmM/r2Qm6LT7ILq8fTVrW8B9LlGG/vBXDAAYIcnL18eGNb8Wl6nBtYxNrYCR
 rK72znLcpttJuovmmhqNIiHVgvt3IFMxevj+gU6FRhlsh0PV43tezZCqVx13SLV0sQx0rCZvu
 v31dXCIIiE6l2GIVawVr1hOPx2VbYGpPyOxoZ2nXoOvnt5g9iXnJnYYcDGZ2JK5EPshWOkO15
 R6bczzBf/AcIjYjg/vxDrAJGGQJd1xDdIG6+P1kjkPi/1k1kTQ5iixlNGEdrp+qNjGvG763WB
 /bMc5hWtkcC5zxffCvH9s69tricp27m3jD4Qld5iD/mmuwT4BcIc+LKS6NAQY5W4DqydtAHcw
 Wf/ipjIE4kvj2N8oZExG7KYubtiA1mmnMg88I7KBJVP9iic3pQB7Nk0+ZhnefVkKJVKshEeB0
 PpNTXveMEJd0FvQChdzYUOnmBD21S09idxUAA9+XOZWTLNr7oVcRszkL+GEKxAH7834/QRadd
 WXnWzTBDli66gOQrUdhvVCKZkgDJjc2SfWve2nMd3xW39i3Ov3FwXDVmpbGYWt3t9i8bCdGLj
 U0LaVvuzpjuI1Nt/i4oX7TsCytWxXzQkIHI6GmhU9JgpQKskAu1O4VuLYRWXxdXSggUZTX3py
 PfnPHG6d0TlXngIzJOqjpeSY5TJBwMQpZ+ShEObRPGeTN5j3abvqj8vao/pDkchQE/KGMNTr8
 IDyt6yq4Ju1l/w1KoXdv0yy0C8/Z15DkP2OEowN4c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_172205_565559_0AB14A67 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] zynq: derive DEVICE_DTS from device
 definition name
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

In zynq target, the DEVICE_DTS variable is always set consistent
with the model part of the device definition name.

This patch replaces the redundant definitions for the individual
devices with a common recipe.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/zynq/image/Makefile | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/target/linux/zynq/image/Makefile b/target/linux/zynq/image/Makefile
index 39305a6d54..7cec38ca68 100644
--- a/target/linux/zynq/image/Makefile
+++ b/target/linux/zynq/image/Makefile
@@ -31,6 +31,7 @@ endef
 
 define Device/Default
 	PROFILES := Default
+	DEVICE_DTS := $(lastword $(subst _, ,$(1)))
 	KERNEL_DEPENDS = $$(wildcard $(DTS_DIR)/$$(DEVICE_DTS).dts)
 	KERNEL_INITRAMFS_PREFIX := $$(IMG_PREFIX)-$(1)-initramfs
 	KERNEL_PREFIX := $$(IMAGE_PREFIX)
@@ -53,7 +54,6 @@ define Device/avnet_zynq-zed
 	$(call Device/FitImageGzip)
 	DEVICE_VENDOR := Avnet
 	DEVICE_MODEL := ZedBoard
-	DEVICE_DTS := zynq-zed
 endef
 TARGET_DEVICES += avnet_zynq-zed
 
@@ -61,7 +61,6 @@ define Device/digilent_zynq-zybo
 	$(call Device/FitImageGzip)
 	DEVICE_VENDOR := Digilent
 	DEVICE_MODEL := Zybo
-	DEVICE_DTS := zynq-zybo
 endef
 TARGET_DEVICES += digilent_zynq-zybo
 
@@ -69,7 +68,6 @@ define Device/digilent_zynq-zybo-z7
 	$(call Device/FitImageGzip)
 	DEVICE_VENDOR := Digilent
 	DEVICE_MODEL := Zybo Z7
-	DEVICE_DTS := zynq-zybo-z7
 endef
 TARGET_DEVICES += digilent_zynq-zybo-z7
 
@@ -77,7 +75,6 @@ define Device/xlnx_zynq-zc702
 	$(call Device/FitImageGzip)
 	DEVICE_VENDOR := Xilinx
 	DEVICE_MODEL := ZC702
-	DEVICE_DTS := zynq-zc702
 	DEVICE_PACKAGES:=kmod-can kmod-can-xilinx-can
 endef
 TARGET_DEVICES += xlnx_zynq-zc702
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
