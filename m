Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C78F61C9
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 23:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aEWOIuJn5aBn1KzlnWh06nFTIkLih2hM58p08ix5j4s=; b=arB+DS9GZg98l7
	8/DQ50jpzO47bE/74pwBEPNZHfETFslxfA4BZgFsuazSwc4mLgrCdoLkrLx14nMR9Q7xjBpIpOggQ
	IDHg5JJOyvAk3Zt3IGWuNNcI37f459vcNKtk4yjPHew920EqX6daPoujmpLWx4VFkZc1XOQ/6NdHw
	iNZbWUm7rQxBo2TpDNGx/6KpQWRB5bAxRKDUnQ6sPFjhSDlNuaoP8YV8i2A9eL+ICOV9AH6yLuQKi
	ISyLa0kmBOnsgPRMGUWVC7LqXvKOctWYCxpkdYATYWrcOpRMnr0urcspYmnHRoIdPna086qLr6Viv
	ErkygxgI0RyMQXpumPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTZbC-0003vY-0u; Sat, 09 Nov 2019 22:52:54 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTZb5-0003v4-Dw
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 22:52:49 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1iTZaq-0001Yt-W6
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 23:52:34 +0100
Received: from build.bln.roederer.dhs.org ([192.168.8.5] helo=build)
 by feeble.bln.roederer.dhs.org with smtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1iTZaq-0000Tr-8G
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 23:52:32 +0100
Received: (nullmailer pid 19566 invoked by uid 10000);
 Sat, 09 Nov 2019 22:52:31 -0000
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 23:52:17 +0100
Message-Id: <20191109225217.19505-1-devel-sven@geroedel.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview: The "append-uboot" macro is looking for the file
 "$(STAGING_DIR_IMAGE)/uboot-fritz4040.bin"
 which is provided by the u-boot-fritz4040 package. If this is not build,
 image creation will fail with "file [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_145247_621354_27B6B598 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: fritz4040 depends on
 uboot-fritz4040
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

The "append-uboot" macro is looking for the file "$(STAGING_DIR_IMAGE)/uboot-fritz4040.bin"
which is provided by the u-boot-fritz4040 package. If this is not build, image creation
will fail with "file not found".

Signed-off-by: Sven Roederer <devel-sven@geroedel.de>
---
 target/linux/ipq40xx/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index a9c5e625af..7ae6f36baa 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -130,7 +130,7 @@ define Device/avm_fritzbox-4040
 	IMAGES = eva.bin sysupgrade.bin
 	IMAGE/eva.bin := append-uboot | pad-to $$$$(UBOOT_PARTITION_SIZE) | append-kernel | append-rootfs | pad-rootfs
 	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
-	DEVICE_PACKAGES := fritz-tffs fritz-caldata
+	DEVICE_PACKAGES := fritz-tffs fritz-caldata u-boot-fritz4040
 endef
 TARGET_DEVICES += avm_fritzbox-4040
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
