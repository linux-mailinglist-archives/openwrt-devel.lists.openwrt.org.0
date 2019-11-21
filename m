Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7532E1056F3
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2mcoEP1UockJzefnAlpN6suNk5X8aNFSf2OCv64HEs=; b=Yq0Vhzu5Xg+ox9
	jmbgZPdoM7ExEIpsDY5XHYMWUDfi73fBGGsKiQ+aqOSJZZ36fCvGYeydE8UXDTFw0Z5md2NmInEoh
	w3dx0eI+viJEQAumGb65V3GixuWG/dVl9tFIdBEVaG9GTJlHZhsuqBfXfSgxy3d41rlgnhKxrXWk2
	0UzAoM6Pu3isBu5IAI7tsCxY3nfoVhvznAjCfXRKbPukqrAHj70Eyupcso1jtKyi7U9ei6o7J3mNG
	MhbJnCqgetgavvZDQcN5yzvu/Sg2gfPn9CW9aue8dyN5BJsClhIWpdXKwylqtsdYXIqSS3xnSI7kp
	pJI5J023wMTPCCS3xFiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpFl-0003HC-Ey; Thu, 21 Nov 2019 16:24:21 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF2-0002nI-J7
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:38 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 3886A1BF203;
 Thu, 21 Nov 2019 16:23:30 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:18 +0100
Message-Id: <20191121162322.671035-9-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082336_769663_190A040D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 08/12] include/image-commands.mk: extend
 Build/fit for U-Boot script integration
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit extends the Build/fit macro so that if a ITS_UBOOT_SCRIPT
variable is defined, it is pass to the mkits.sh script as "-s"
argument. This allows the ITS_UBOOT_SCRIPT file to be integrated as a
U-Boot script in the FIT image.

This will be used as part of the dm-verity integration to add in the
FIT image a U-Boot script that provides the details of the dm-verity
volume (salt, root hash, number of data blocks, start of hash blocks,
etc.).

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 include/image-commands.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..3662cb2821 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -155,6 +155,7 @@ define Build/fit
 		$(if $(word 2,$(1)),-d $(word 2,$(1))) -C $(word 1,$(1)) \
 		-a $(KERNEL_LOADADDR) -e $(if $(KERNEL_ENTRY),$(KERNEL_ENTRY),$(KERNEL_LOADADDR)) \
 		-c $(if $(DEVICE_DTS_CONFIG),$(DEVICE_DTS_CONFIG),"config@1") \
+		$(if $(ITS_UBOOT_SCRIPT),-s $(ITS_UBOOT_SCRIPT)) \
 		-A $(LINUX_KARCH) -v $(LINUX_VERSION)
 	PATH=$(LINUX_DIR)/scripts/dtc:$(PATH) mkimage -f $@.its $@.new
 	@mv $@.new $@
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
