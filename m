Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8668F192042
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 05:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BS1/sLpyQbM7Dw77IJO6Ug9LNpfq+M9I2VHJj1Q63HA=; b=BI8RGxHL0a5c7w
	cpmGhOZfAml4Z0Xzq2few8tFM7sD9lnzMgc1CE1zSYoO0SdjYnLlCbFNnzwZyPyTzxpeoQECPmy8P
	L3XVOhqUC9F9z1IzzdW64s6VmqWh78R3hk9cmrxWaKOXmXW2mAknTBI+UJOEcCbeSWLa2KYIb6VAf
	Vpw4rjNtZ6K0FIM9u/3iSgd0OPs0K4kjG8Xvdkgp7UPhahU0jrV9S/ZfuyzuvtI1+ad/rO0NnUEKH
	uYmqPC2U/qJ8A71i+fBpHcO2ciIearL2aPGA6ZL21La+WzHNZyXfjvyzHq9HX+okmQg37ImDq9xab
	rr2paBFT8daTu1cgqOAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGy8F-0003IW-8O; Wed, 25 Mar 2020 04:59:11 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGy89-0003Hi-GB
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 04:59:07 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 62FF3FF802;
 Wed, 25 Mar 2020 04:58:59 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 18:58:42 -1000
Message-Id: <20200325045842.425722-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_215905_673730_9B98FDFC 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86: fix offer f2fs/ext4 based overlays
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

With the recent rework of the x86 image creation the f2fs/ext4 based
overlays dissappeared as their are not copied by default.

This commit follows the implementation of malta and armvirt to copy the
overlays as well.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index c2961e5b9c..81a8f73efc 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -118,6 +118,10 @@ define Device/Default
   endif
 endef
 
+define Image/Build/gzip
+	gzip -f9n $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
+endef
+
 $(eval $(call Image/gzip-ext4-padded-squashfs))
 
 ifeq ($(SUBTARGET),64)
@@ -136,5 +140,11 @@ ifeq ($(SUBTARGET),legacy)
   include legacy.mk
 endif
 
+define Image/Build
+	$(call Image/Build/$(1))
+	$(CP) $(KDIR)/root.$(1) $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
+	$(call Image/Build/gzip/$(1))
+endef
+
 $(eval $(call BuildImage))
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
