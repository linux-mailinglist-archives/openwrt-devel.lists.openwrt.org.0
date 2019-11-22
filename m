Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA7C107778
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 19:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NbBPuttomNf78IXqsqxXypYOkOE524cxBRQxvdVpUyQ=; b=ofkXHjwSwB3+Oz
	PtAgQ6K1oiXcQLha9EAea/GP8iHRBDpUZRCU3iJrKbfN53mMX2nXYEkOWCC87N5qiUmn6TF9JFEQv
	kKBXr0h9rQ0Rd6kAosRTCnyNpP9Y1Ft1FSACH+Lt3UYfUVH1n/KPO8qaw2Bmv8qL4+e9gU6JBYseE
	obxFvYNbwSDCowNnrIMe5AUBjxapB6N+6UY4/VozvRQsUlFzxnEzcLpK2mcEL+5/9dzapOIMKvgqh
	zMoHU8AwMcLCHa6i6iSKIm48VhWYYOYlzxbDH5lqQb4LaJVW+MVsKKSfkceRQw7YPIQsmvnIaPe3r
	M4tgrmShkE5CX3ogWZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDpw-0004j0-Vw; Fri, 22 Nov 2019 18:39:21 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDpn-0004iZ-Fs
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 18:39:12 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 96183FA2CC; Fri, 22 Nov 2019 19:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574447934;
 bh=1LOWMVvRpbWfhPlN9+GmugBACwbWQH4ffPzXaQoA8fM=;
 h=From:To:Subject:Date:From;
 b=nI5WdcloGjpl/cECfhrV4rxntDf7hWNXkOc5NV54fIFT2SR63LbldLlYg1udVH2Db
 ja4ftjlDfdCs4l1a9I8pEA5YCtWv/8qWwUMdGf7eRUt1wSPj9UVUmY6cnbo842iOcL
 f3ZLpSNTcaXRYgPdb9zB1HNrHRyZB68tTA7E1LaI=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.177.adsl.dyn.edpnet.net
 [213.219.161.177])
 by volatilesystems.org (Postfix) with ESMTPSA id ADD3FFA2C8
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 19:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574447930;
 bh=1LOWMVvRpbWfhPlN9+GmugBACwbWQH4ffPzXaQoA8fM=;
 h=From:To:Subject:Date:From;
 b=YuaYP6B9jM4l37irI5aYFA7RmdHoDI3LJBFidaEEas8zgZZZwCRzN8ChslxYua76K
 mWmECeWfQSK/v4fc3YmMNdUD0lIh/sA49O+tF5stl5l69tgF3ndlrriGSJSj+Ndqob
 jEXrhD08cE5JzrhinHFciS4+a+byeSKqIKIL1cVk=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 19:38:46 +0100
Message-Id: <20191122183846.4769-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_103911_684609_26A1F72A 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
Subject: [OpenWrt-Devel] [PATCH] ath79: remove ath10k drivers from Archer C7
 v1 profile
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
index eeaeaf53f4..ae956eb98e 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -123,7 +123,7 @@ define Device/tplink_archer-c7-v1
   ATH_SOC := qca9558
   DEVICE_MODEL := Archer C7
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x75000001
   SUPPORTED_DEVICES += archer-c7
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
