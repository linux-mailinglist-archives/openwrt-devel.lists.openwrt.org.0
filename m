Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4E010777B
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 19:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IJCT3o7EQaKvvFVLyGAQbTBl+00zX5nm73fb2p6jf34=; b=bU85i4WI1PYVan
	VteY6IiNFHO2jOI/0qPXh3chFxjWrFtHCEzDEG/zWLdcYzIwWVJ+4yKdR25N59dJ9MaqhLy2Y8u5a
	tXIAvb5186MJf5yclX39PHa/hQ7fsN+/+94aumxTv8XnR//qiyOZ5TtoLGdyMw8oVagixw5yTSZPd
	XeMHfZbuthHIejbXBXoq1BQCWobEKiknNBPw6Fa8qtvZn7aWSVdRIH7ZeuVtFz9zDFNBF15VTMmnR
	+KmKvvM1EdA2BixgQP7BQMBJI3O2DdY2/3lchTUGE+0UssTPwsa34gqGipkWA9YLT9g0fe5TtILfY
	H0udIkFabzVvucV4SRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDqI-0004y0-33; Fri, 22 Nov 2019 18:39:42 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDq7-0004wK-IJ
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 18:39:32 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 8205EFA2CC; Fri, 22 Nov 2019 19:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574447968;
 bh=N4U3kSXz+JnrRKocIDNfl44ba8B2LX+kxlhCDy8NrIo=;
 h=From:To:Subject:Date:From;
 b=df0GS9sV4s94t1D0uLXawOMq76ntfxh2LJKn2kB7HPUx9BxSC7dCZNeD/+r9Zt+oH
 i/L+n99xzr1wAvVpVEub8+dh4fdJFK0A+muEA0URnTu3OrUJLm63eYpQEjwKNSGJx8
 qAgCNwDcY2RBcLaLtv1vBhd8Qqy/l9rCQHVhi2BM=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.177.adsl.dyn.edpnet.net
 [213.219.161.177])
 by volatilesystems.org (Postfix) with ESMTPSA id CAF81FA2C8
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 19:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574447967;
 bh=N4U3kSXz+JnrRKocIDNfl44ba8B2LX+kxlhCDy8NrIo=;
 h=From:To:Subject:Date:From;
 b=QH+jv8+oPaqOGaucPdSBQEaSGjQ/HfYeo86KANqtapU1gYXic76rf2MBj6XJLrRS2
 FIt92k4TJOBga7UIyKdeeJO228gtrmNn1X1UCcqE8AhCx1CCXzRhiChEBjoRMxx/Cf
 xZ8EtFtXTBM0k9J9t/6eYXz4q0e5oLEiYOX4Xl/4=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 19:39:19 +0100
Message-Id: <20191122183919.4886-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_103931_747932_46AF3FDD 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] 19.07: ath79: remove ath10k drivers from
 Archer C7 v1 profile
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

Ath10k packages were removed from ar71xx in master in commit 34113999ef430ce74a627ab6e6a5370aa41c9d20,
fixing FS#1743; but ath79 in master and the 19.07 branch still suffer from the issue.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ath79/image/generic-tp-link.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index ece7284710..b57fc0a57f 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -79,7 +79,7 @@ define Device/tplink_archer-c7-v1
   $(Device/tplink-8mlzma)
   ATH_SOC := qca9558
   DEVICE_TITLE := TP-Link Archer C7 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x75000001
   SUPPORTED_DEVICES += archer-c7
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
