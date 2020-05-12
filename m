Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1631CF21B
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 12:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1tesQKZtVlULO+8Xk89aEr7fQNnEYnu3UvzlBgRIYI=; b=rHvg8J4WkRMvgZ
	adgIIAD7gLA/h49AgOSztjq40KA6o0VzAbGUYTSTJDwvdxRmh2MuMTzRpkykCFD8DeYGFTreSeabR
	eE3vzbnDveko1Wi8d3CBFb/gCSoqUvsk5NFdA1kBawf9FGNUqKNs0mTki+qERS9rBTTwnTv+ZiocY
	IaeE/LnBqJrvH7civznGjZ/XqCYILIaz8FPbG75xLAMAygoZvTlIy1XjMktl8ICRw9JLCFPOQWmvP
	rgwUYugszmfa3jMnrUW+6XiEa0Hs0MDNe3mHBFWJOKzVYKQCxHXVcRXQjmvAiaiso36pfyu0CtcEb
	HIfHQMiEnpOmfsEsqhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRnT-0003C4-BG; Tue, 12 May 2020 10:05:59 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRnN-0003BD-DM
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 10:05:54 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id CB535FAC24; Tue, 12 May 2020 12:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589277925;
 bh=5GNCANxETeS44aHats8figPd/SDRcOsdSqr1eTNffio=;
 h=From:To:Subject:Date:From;
 b=aS7++6TxXICrFcHDfa+pRdkbZJMfP30gYh5Xvm/0o5rhNlFCLiG+u5Vq01z9fGhfX
 Tm4jEndY7rgx3bOoMCECnAkBz84PqVslEH6CENinLAIXhLM2H1QudhDOWrFHWqF0wN
 O0JMzR2pr9/IsoSo4k+O5atCv6qkW6RHEyvIkkNo=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id DA8F3FAC22
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 12:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589277924;
 bh=5GNCANxETeS44aHats8figPd/SDRcOsdSqr1eTNffio=;
 h=From:To:Subject:Date:From;
 b=hcNMGOdGq0hD0ed57LNjypYKfR2nkjheBsKd7DKLmTLtFcqThLehz2oIfEjSktNKT
 qXX5GnZ3Mk4hX1+zIsx6Gk539eI7VkJId+VEi5GY2kzPeSN0zHyXgHSNv7gklf8dwu
 60KyTouSO/9x0Egfz3G1dj9j6DCNpOOx6c7KJYfI=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 May 2020 12:05:20 +0200
Message-Id: <20200512100520.3150-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_030553_601441_B33A1C33 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
 DEVICE_PACKAGES
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

The DIR-860L B1 has an MT7603 radio but was missing the corresponding kmod-mt7603 module in DEVICE_PACKAGES.
Add this so it gets included by default, even when the kmod gets set to [m].

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ramips/image/mt7621.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 082bb31b79..f16bf2a5bd 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -227,7 +227,7 @@ define Device/dlink_dir-860l-b1
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-860L
   DEVICE_VARIANT := B1
-  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
   SUPPORTED_DEVICES += dir-860l-b1
 endef
 TARGET_DEVICES += dlink_dir-860l-b1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
