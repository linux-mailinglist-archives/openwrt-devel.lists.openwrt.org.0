Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9265E13AC7D
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 15:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5+DAFDSrN5fa24EvxorW+MQzZYpEDn7/rHqVc7g6aqY=; b=o1pnLQhW3Ez0IH
	zet+vctmX2WkI/iql2PnSSIpC3DUwbtXDE/5ENR7SB4cU7IfzlNqVUkQ3SMdmqWT5O8VJYlEliZrd
	u5YIwbh/9SXhDVsr6NAmn8ITlmUEQ6hWJJuO9KAs27u4suIl7LFna4GcJ89ayvmhhNF2R777VnueG
	b1mCPAAauwwi6Qvj6MUgmVP2bBMOPH87ecpaw4vVHgc3c5pmduePEb3RuOklgiUqr+4OS7xFQQmal
	iArxxNK6wPOyIGR0f58dwnyVISe3CibZGOGKTLW/66JsJNWr1oT0ejkJiS7tB4/1Z7Ycq4+bUw66M
	eLn8kd6wYT1aPBjPre0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNNe-0003s1-8d; Tue, 14 Jan 2020 14:41:18 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNNR-0003px-92
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 14:41:09 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MPGNn-1j0vbM3Q8T-00PaUu; Tue, 14 Jan 2020 15:41:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 15:40:17 +0100
Message-Id: <20200114144017.29092-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6CeFI3NCd0NN+WY9pjOKwjsHXOGaYpy7EEhaHAjD9DDZtq2Ak/p
 TExavrxP/A/OsLQKMdorV72NJOShyHH9yzBHbIm5y/noNSConMN6yNDHLj0m7ArAY1jM+nQ
 nmQPPw7o07WaXT0JLjNVhuWSv/WCTTjEW+SgYb6BWOnHuQmYfhRV5BnY7omUDaUWpfrRhv9
 yqqmeFWjfMAXmbU5cDtZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zl4Y3wKX19Q=:4waW5VB5nnnAOyfznhZe98
 lvyDPoE2oWPXQtMSwkBPqwAId+bOFzibIkGk9fCtNmjbs/btPg6BHdDdw7FK+c/oQUEZZ/EzM
 rp8Wf+YE6jkGuOqggAusFDQCtIDyYVhMc/Qslwv2ciElgQ4Q0Ga1LtGsPXI7Ym7nFy8L2weMI
 wtG/QDy5bA7NqBE8X8+oO3rxyYs1KojPg5TUJyECIV5EwGswV17E89hxxuF6Xq883G+SgoIzh
 mLNcqUhQVtslPrVrB84FBX67KyfQsqqsoecipmdg571BNUc2lfKqj1KFC/vVLTVOLmWqOGeiZ
 R4k2xHcsKMVzNWo1vKqC59+94IpRTH9xZTvtU5UbVV2HzXJuJQwmyvdivTbuK54yH57eSTSQO
 rTHQVZDAFKcixVcaNQGgJSX2WbOIzMRjxToVOfHlAgjaXcudzsYCapCmcEhRf1/nxdvf8d/Z/
 wcJAM9/9K4yB9iVucOFbYK+Au84zDwGN0BANxH48RyrmXN5X2T2fRBX2OPA5pTMt5Ur0S0gub
 vGcHqDYlacBuxzKCPwlS/9UjMv8dKd8ViXzDcbzpF5eZwPZ97Mk7Ut3N60Z5ScLu1VVfrFGCt
 jeiGQQuFvwtkAfI5AcuE9LUL73g0PKHl6Ma265UmEVn/MSIVIs0lg84iPoOqtykF/FDb0DC4R
 lazdqQTvLKjyiRIZ4yE18xTI/pReF0eQtuT8ix2YhDqSwTx+Gw/dcm7lSfOOkYtA09bDZy57j
 aLN24rm1pV/NniGpTpd6Z5ifRrYO0eBUjEk+Jpr8u9pawrwp5kBUluWha7RNuPeOLzuSeRsPc
 xLQziX3EWTPoCZ3YLtTiaudKyojV2+HD9aZ3gkfJAaB35abqT0jlnVGMwZf0N4928WIq7htz2
 rLeeShLD7qurXIpmiIj9L7aST5uG6OU2dl0DCm7Cs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_064105_608316_E9E5C568 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [RFC RFT PATCH 2/2] mediatek: mt7623: add back
 images for mt7623a-rfb-emmc
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The image creation for the mt7623a-rfb-emmc has been removed during
a patch refresh without specific comment. The corresponding base-files
entries are still there, and the DTS is still present in kernel.

This adds back the corresponding image definition.

While at it, apply alphabetic sorting to Makefile.

Fixes: 050da2107a7e ("mediatek: backport upstream mediatek patches")

Cc: John Crispin <john@phrozen.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mediatek/image/mt7623.mk | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/target/linux/mediatek/image/mt7623.mk b/target/linux/mediatek/image/mt7623.mk
index fd609d22fa..ab08ca83a3 100644
--- a/target/linux/mediatek/image/mt7623.mk
+++ b/target/linux/mediatek/image/mt7623.mk
@@ -1,3 +1,19 @@
+define Device/lemaker_bananapi-bpi-r2
+  DEVICE_VENDOR := LeMaker
+  DEVICE_MODEL := Banana Pi R2
+  DEVICE_DTS := mt7623n-bananapi-bpi-r2
+  SUPPORTED_DEVICES := bananapi,bpi-r2
+endef
+TARGET_DEVICES += lemaker_bananapi-bpi-r2
+
+define Device/mediatek_mt7623a-rfb-emmc
+  DEVICE_VENDOR := MediaTek
+  DEVICE_MODEL := MT7623A reference board
+  DEVICE_VARIANT := eMMC
+  DEVICE_DTS := mt7623a-rfb-emmc
+endef
+TARGET_DEVICES += mediatek_mt7623a-rfb-emmc
+
 define Device/unielec_u7623-02-emmc-512m
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7623-02
@@ -8,11 +24,3 @@ define Device/unielec_u7623-02-emmc-512m
   IMAGE/sysupgrade-emmc.bin.gz := sysupgrade-emmc | gzip | append-metadata
 endef
 TARGET_DEVICES += unielec_u7623-02-emmc-512m
-
-define Device/lemaker_bananapi-bpi-r2
-  DEVICE_VENDOR := LeMaker
-  DEVICE_MODEL := Banana Pi R2
-  DEVICE_DTS := mt7623n-bananapi-bpi-r2
-  SUPPORTED_DEVICES := bananapi,bpi-r2
-endef
-TARGET_DEVICES += lemaker_bananapi-bpi-r2
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
