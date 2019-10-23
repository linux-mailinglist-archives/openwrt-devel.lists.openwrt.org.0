Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0365FE2124
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 18:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3CqGbZibuUTNDxwJZxrtjnrHSemgH+MtJJxgDrWoN9A=; b=VSXKTG8OXF0EwF
	PtYnbVyfywAC2PVfUQOFhjvXPSqNF3d5Oqksl18q2V0biTvohOBLhD6oxFfH1HaxKQEmnzIfFfXvL
	S5Hiu+tbTYJ4vnTcccCtTrm8HCHgJPQOse0viA4FBr90cJ9HK8SwcwXx0N0pCO47Ek8e/IhcUZUCE
	nYPOCiCyHtm0Wl/bzehfck8hmQtBDXjPjyFSoZbjFmbzFnCabI8c0f92a+5UHjzzVgFHD2UIUzuU1
	u3qVA36Xr2aRsR0Jgyd90+/SHR0rtQQtFBEPYwxa6rW5eBzAuQX0KsLkYRhpYZoMoAuStm74cTIiC
	fYnS4SDJVBBOiz1VqUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJwc-00036q-II; Wed, 23 Oct 2019 16:57:10 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJwT-00036J-3s
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 16:57:02 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 41BB559489;
 Wed, 23 Oct 2019 09:56:53 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 09:56:47 -0700
Message-Id: <20191023165647.31830-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095701_155333_D2C81C8E 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Refactor GL.iNet GL-AR300M-series
 generic.mk
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Rework DEVICE_VENDOR, DEVICE_MODEL, and DEVICE_VARIANT
for the GL-AR300M series on the ath79-generic target.

Changes GL-AR300M-Lite to the current form with
DEVICE_VARIANT := Lite (board name is unchanged)

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/image/generic.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index e82e125166..3373956e45 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -549,6 +549,7 @@ TARGET_DEVICES += glinet_gl-ar150
 
 define Device/glinet_gl-ar300m-common-nor
   ATH_SOC := qca9531
+  DEVICE_VENDOR := GL.iNet
   DEVICE_PACKAGES := kmod-usb2
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += gl-ar300m
@@ -556,14 +557,13 @@ endef
 
 define Device/glinet_gl-ar300m-lite
   $(Device/glinet_gl-ar300m-common-nor)
-  DEVICE_VENDOR := GL.iNet
-  DEVICE_MODEL := GL-AR300M-Lite
+  DEVICE_MODEL := GL-AR300M
+  DEVICE_VARIANT := Lite
 endef
 TARGET_DEVICES += glinet_gl-ar300m-lite
 
 define Device/glinet_gl-ar300m-nor
   $(Device/glinet_gl-ar300m-common-nor)
-  DEVICE_VENDOR := GL.iNet
   DEVICE_MODEL := GL-AR300M
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nor
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
