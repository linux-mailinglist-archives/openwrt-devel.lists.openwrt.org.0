Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610B886D0
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 01:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAciwh1Xb17hldlFMz+dqs8o5HdfQOz/w9q9mgWKZ9I=; b=WkCBJP1thVFi8r
	ir1U9PwGH1W5O06ZtRIMNdnv40NWpLNQ3w3pJqgGGXPNjoybbc+Tvjy3M2trX6IQ6jHItHZXE4HwU
	vDK/XjJHQuIiwqYYuuQblENjMTZIAufqYVKu/HmXDM5XVViueRhPWg8kN+aNOYaPRN2U6cHbcO98X
	u0Sq7n1eDyiggbrntS+NRV0BvSb4FuTckom8pfQPBwfwugRLk4TgwmgGqH4lQ+UANJp7qRiBurzCS
	XbmMkAq2UobJrInR+KSPENcL7s8YCzhq5JccIe2bkvpiYKo9TaNylAFi4HjL52Krx/1NZG9vNZiKi
	8cJ2+qfxVO8OF8NGNv3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwE0y-00062B-Ha; Fri, 09 Aug 2019 23:09:40 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwE0h-0005t5-0d
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 23:09:25 +0000
Received: from dbauer-x250.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:f11d:acff:365f:90c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 55C972225F;
 Sat, 10 Aug 2019 01:09:17 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 10 Aug 2019 01:09:04 +0200
Message-Id: <20190809230904.15822-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809230904.15822-1-mail@david-bauer.net>
References: <20190809230904.15822-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_160923_210458_A4097C12 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] lantiq: enable second VPE on Fritz!Box
 7412
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
Cc: AndyBinder@gmx.de, Valentin.Spreckels@Informatik.Uni-Oldenburg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The AVM Fritz!Box 7412 does not use the VMMC part of the Lantiq chip but
rather a proprietary solution based on the DECT chip for the FXS ports.

Therefore, the second VPE can be enabled for use with OpenWrt.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts | 2 +-
 target/linux/lantiq/image/Makefile                         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
index 97817595e9..111ef1b320 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
@@ -11,7 +11,7 @@
 	model = "AVM FRITZ!Box 7412";
 
 	chosen {
-		bootargs = "console=ttyLTQ0,115200 mem=126M vpe1_load_addr=0x87e00000 vpe1_mem=2M maxvpes=1 maxtcs=1 nosmp";
+		bootargs = "console=ttyLTQ0,115200";
 	};
 
 	aliases {
diff --git a/target/linux/lantiq/image/Makefile b/target/linux/lantiq/image/Makefile
index 2352cb6b5e..f71a262c82 100644
--- a/target/linux/lantiq/image/Makefile
+++ b/target/linux/lantiq/image/Makefile
@@ -673,7 +673,7 @@ define Device/avm_fritz7412
   KERNEL_SIZE := 4096k
   IMAGE_SIZE := 49152k
   DEVICE_TITLE := AVM FRITZ!Box 7412
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-ltq-tapi kmod-ltq-vmmc fritz-tffs-nand fritz-caldata
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic fritz-tffs-nand fritz-caldata
 endef
 TARGET_DEVICES += avm_fritz7412
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
