Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC45E2144
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 19:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tJV3GUVGB1igayr+3Td8u+JjqH4Ue+jeJlGUHzBmZKE=; b=XE53UdMaYMWNTm
	bsCnzxsJ1U+kfHJ0aes32Gm5cTMOrGJ25H9E4hZUdMgaRLZ726jNLeFa1tLWvOS8KyXuis40uOGVr
	2d6B23RFxUVlTwZESJW/Q8bqirLVhK77xevwKczKemupdaqHpjqLeOsdRrCWG8+UsmfBrg4ojyHKu
	szTMxpRdrABFHHOvapbOPXQAM3OV66YiVs1KluitT8NC49JoH4zAr5t32CtGmQZZwkRH2TRKX2Eta
	imu5vbvS4o7jWCvzbqPRo3tLZ1Uk7tJylKOLUXbK4j4U58Abf0FVOK6OriJxp5wtQJi6BLn4VDukz
	1LeU0iDcXWoDUWTU0P8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNK1s-0005Zj-GN; Wed, 23 Oct 2019 17:02:36 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNK1i-0005Z4-8N
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 17:02:27 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 3136E5948E;
 Wed, 23 Oct 2019 10:02:25 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 10:02:19 -0700
Message-Id: <20191023170219.26716-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_100226_300482_BF417DE9 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: uboot-envtools: Add GL-AR300M-Lite
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

Add the GL.iNet GL-AR300M-Lite to the list of supported boards.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 package/boot/uboot-envtools/files/ath79 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 4e6aa5aa98..d5b94823fd 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -16,6 +16,7 @@ case "$board" in
 alfa-network,ap121f|\
 buffalo,bhr-4grv2|\
 engenius,ecb1750|\
+glinet,gl-ar300m-lite|\
 glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor|\
 librerouter,librerouter-v1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
