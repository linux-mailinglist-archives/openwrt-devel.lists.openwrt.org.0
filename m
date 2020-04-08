Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427671A1F2E
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 12:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22vgzv/adslM2ca2DetWQAZVfZr0o5OzoGffhSUHqew=; b=pfvQUYABVCpg/K
	BwyGA+0zOLkeQACU12sp0vynDa2iDiJEwmuHQmopyxRmlNsAoopOssZM26wG1OeM8luQaYODci2/b
	CVz+DG9C+a1FHuZHn7mid6K/5xAHqf7lzNo/J3eiHVNDrJFj5zYD4fIyxOzIqnH7jeSn9HcAlrhcx
	sQ4gtE5yRlmAuKuIrj885FftY1FjpJgJ2nhnnEbifZHJKqiIxH7j51xNJtisoI0e2RrfAexd0qU/w
	2vx9OMQoTFax2qI8ekqFoWkkShV2vbiKQm4GZ3eB0+riiaogtrO2YWs4AhTQGJllUyqBAmIS56GlW
	dVRd1tSaq4JlGlSS72Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8Gn-0007EP-V2; Wed, 08 Apr 2020 10:49:21 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8G0-0006Y0-Qa
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 10:48:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id E3C3F3A049AF;
 Wed,  8 Apr 2020 12:48:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRAI7O5sLWTu; Wed,  8 Apr 2020 12:48:27 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Wed,  8 Apr 2020 12:47:15 +0200
Message-Id: <20200408104716.3644779-4-t.schramm@manjaro.org>
In-Reply-To: <20200408104716.3644779-1-t.schramm@manjaro.org>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_034833_001335_DF7A864A 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/3] ramips: mt7621: reenable rbm11g
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
Cc: Thibaut <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org,
 Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I have a rbm11g and can confirm that the LAN port is indeed
switch port 0.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 1 -
 target/linux/ramips/image/mt7621.mk                | 1 -
 2 files changed, 2 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
index 554573f30e..5facec1e0a 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
@@ -145,7 +145,6 @@
 
 &switch0 {
 	ports {
-		/* FIXME: Is LAN port at switch port 0? */
 		port@0 {
 			status = "okay";
 			label = "lan";
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 30552ebee1..0ecd70685b 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -506,7 +506,6 @@ TARGET_DEVICES += mikrotik_rb750gr3
 define Device/mikrotik_rbm11g
   $(Device/MikroTik)
   DEVICE_MODEL := RouterBOARD M11G
-  DEFAULT := n # disabled due to unknown port assignment
 endef
 TARGET_DEVICES += mikrotik_rbm11g
 
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
