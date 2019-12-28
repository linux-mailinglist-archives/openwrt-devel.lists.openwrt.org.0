Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA9D12BE00
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 17:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWkM+gAUOMqx+nlLr2Z4x1phlPmA/JW/ff04PYbKro0=; b=hB7rG0YnqPAzeE
	m5LBXOcvE59gddCwn5yujrW6Pk3bcjT9M96JwsmxQ9haOjjG91VfzCHT3MnqamEGemu0YDq/6/T5w
	PxPibZ5w/TIGMjqjUfdXc0Vr+BHWuP3rq8iSShyZPBVEVbiHvydS1vDpOWV+E43eEtr9LG7MMorEF
	gd7rKgqyWpvvB/ifIyibK6PXrDjzikaToZbQqAYdtLUvRMhw0IPSVmAYNAdGq1OibawfRYz0QVDsX
	zxuQZIR08sCsCQEMnjbnkyAcBllJMkMQ2ffha+sn4ZoicENmBd+C4pLEs5eALuJ3/PSbICkydMxcM
	pnF1RA1ukRL4SYHDCD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilEvf-0005tk-Er; Sat, 28 Dec 2019 16:27:03 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilEvN-0005ip-1y
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 16:26:46 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MTANt-1jC1nU3mmd-00UeV0 for <openwrt-devel@lists.openwrt.org>; Sat, 28
 Dec 2019 17:26:39 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 17:25:50 +0100
Message-Id: <20191228162551.13270-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:A70r66Smmu+Zfv98pK4hg0mBWwiriJ87AN1ixn7zNB4DwXUu6Bu
 pk/UMd8vq3of4vP9tkxidZ9em2N7EcCq+P6Gro62acTx9bcNPo6ptdUdF5Ml+x3dPpRzpBa
 oF7kq+qbqoaNPdKmbv25ul9cKiHNW2KQlQcXJ7o3KSZvK+B0uRHawBOnwDOs2i9hQa06LnH
 d/GR8/S1w7fJCMgII5hHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:axr918zLkb4=:/ldoOxzkGaZc3Kpsy3j+T7
 o88ekV5gIeWeCDHIe1kjLgBgjIYaf3ZVq+KBQwLGPVrAoQuCb/YTsreBIM9K5QJoF/FRi1OfO
 NHdPPCdbXyVA4ydGl0bgqa3GrTj+T9KqYiNnHAB2MH1gf4fg6Y4urGXdX6MAG4Wo64Yy3Fw14
 N4acrLOtlJs/tkmD7a5CRUu3Izwqg2Bv0wVkvLUxJvrJ463Dm89r38CWxTJQMsusbZ7zH0Npp
 0Q0rvurnmsGzsFRARR1X71skyR1fkJVmwu1zaM2RbdvfFUc8/P5tvC1fphNg1X5vknQ8lS1jA
 vIvzBL19YIkyStDzbNW363Waz2nsLBJfPqANvhzrUyL0ILTTBT5cWm6LHUqXv4YVUPuVqY58E
 uiLOdrM2OzprCcuyjQm2WLVEW4cGFtCASaX3MekpuzWEAs0BfMslsD3Olf2fTDIdjkw6Vq/DV
 jojhLTj6vFxBGmXtVw3lqxPdbtDp9L4chAyQbT+KFU1walus3gWEaGT0o36Whh+T9I4oFpr9+
 q3UkskdNmsvCcPo5uP9buT+Iw2FtXg5RbG6qyrtVLLmQtCHngxYWQd1fMswuxBCDF2KnCo0Bi
 CaNfkp8uWVF+880296bd0yyu5RioqdXLRR44NMr8p8cL65EFAXn3hsSJu2d5hv8CLcuM4UzSs
 ONWgWIAsmaiYe4ueHgR/nYgtB+KNx9ImSb4KJgwQkWGtWhQM3E9nOIUXIRfC9KcNHHNOLGhwE
 KqZs6lEwaeRsEBtvVgvu8nrPGCFmisjRUZuAi/NNxlWbw6IAm0YIv8plLHQuGRnNHoJw0PJRV
 NuqKMp5gvhYIgJlyezXGyYFbtXi+Ef5m/bGUB6SlHxMlZyT1dCLBdxhUd6B1/DoJ3Yl3izZGy
 ui+/jJg0DM08embQlDY6oG4BUKvdHezXX8MLrV+ks=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_082645_389452_D7F92196 
X-CRM114-Status: UNSURE (   8.40  )
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/2] samsung: use soc_vendor_model scheme
 for DTS file name
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

This patch changes the samsung target to calculate the DTS file name
from vendor and device name and the SOC (i.e. subtarget) following
the common scheme:

soc_vendor_model.dts

This also updates the device definition name to make compatible,
image name, menuconfig name and DTS name consistent.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../dts/{TQ210.dts => s5pv210_embedsky_tq210.dts}     |  0
 target/linux/samsung/image/Makefile                   | 11 ++++++-----
 2 files changed, 6 insertions(+), 5 deletions(-)
 rename target/linux/samsung/dts/{TQ210.dts => s5pv210_embedsky_tq210.dts} (100%)

diff --git a/target/linux/samsung/dts/TQ210.dts b/target/linux/samsung/dts/s5pv210_embedsky_tq210.dts
similarity index 100%
rename from target/linux/samsung/dts/TQ210.dts
rename to target/linux/samsung/dts/s5pv210_embedsky_tq210.dts
diff --git a/target/linux/samsung/image/Makefile b/target/linux/samsung/image/Makefile
index 697d317c9f..53509ef137 100644
--- a/target/linux/samsung/image/Makefile
+++ b/target/linux/samsung/image/Makefile
@@ -13,14 +13,15 @@ define Device/Default
   PROFILES = Default
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
+  DEVICE_DTS_DIR := ../dts
+  DEVICE_DTS = $$(SOC)_$(1)
 endef
 
-define Device/tq210
-  DEVICE_VENDOR := Samsung
+define Device/embedsky_tq210
+  DEVICE_VENDOR := EmbedSky
   DEVICE_MODEL := TQ210
-  DEVICE_DTS_DIR := ../dts
-  DEVICE_DTS := TQ210
+  SOC := s5pv210
 endef
-TARGET_DEVICES += tq210
+TARGET_DEVICES += embedsky_tq210
 
 $(eval $(call BuildImage))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
