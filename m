Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D510695B
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXh8ZBhOTals0JAZVJGfQF1B4YgMqyJ5Eh1WOgAtc4g=; b=ikPpeKBc5th3ej
	KvPkKGu1ex4AlVN5ShaPg3CqXn1gOuMg6OMlOu73pI9Bw1y+F9BAwx7wh1aKnTwuuEyCTuM2hAHVR
	dmstT3/qQseweWvTCCBDX+jSBVN1VlqkxAOSz2V5F4jCk1IMfO8msgRyj++neR8U8uzeKRyY8/A+a
	Nww0hbwIkUpj+Yf9WDa9DDyuGZ1J5xyM4+wICjdzsMXzpT5ETxQ/wJk3Po+Kj84SlKbmQEmMSCa+I
	HAD4rH9zhfEg4bZ7BtAUZitTmhSgWHVWlSeDYHG6khAMelEGM5qlPtB7adv8L2R894MUAIC4l9myt
	+oTETDRwKs5aim2tdsnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5gg-0007xr-KS; Fri, 22 Nov 2019 09:57:14 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fR-0006fq-AZ
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:01 +0000
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 35A1C100006;
 Fri, 22 Nov 2019 09:55:48 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:39 +0100
Message-Id: <20191122095541.688125-6-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015557_537103_598309FA 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 5/7] config/Config-kernel.in: add option to
 enable squashfs xattr support
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Extended attribute support is needed to run a SELinux-enabled system,
as SELinux security contexts are stored as extended attributes.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 config/Config-kernel.in | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index bdb6b91cbb..7f8c63f25d 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -839,6 +839,9 @@ config KERNEL_SQUASHFS_FRAGMENT_CACHE_SIZE
 	default 2 if (SMALL_FLASH && !LOW_MEMORY_FOOTPRINT)
 	default 3
 
+config KERNEL_SQUASHFS_XATTR
+	bool "Squashfs XATTR support"
+
 #
 # compile optimiziation setting
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
