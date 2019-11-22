Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A4810695A
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRhvq0G0Ho1dxy/YIG5O9rBR3pPISuLb5tZoHUTY7qw=; b=QH8uSpM14Mvgww
	CqjdV9CWScxzuRszeC0V3DFMaiXp0PZsazRXcKfOFkb8Pk7PbONTo3iLYEb77uhJoMuko+m/2Vf6J
	WLmL2B55pskV+mqiyevs+pTeYrUHCck9IKJn5RfzAry26Zq03pMQDa+LbIzKdAXgRBmwf640M7HiZ
	ltDxHvHQ+VAb8WmP4Wg5QG9e+DBpbNVxjYZOtodRaVkqYrU3ow3V/h40aNosVK7f2OugU9nVLU/F1
	P4wutKulGPitEU7+tqss/jYXbsWoMJcwbLatXDWdqE2+zubhos0O4/Yocr65BhcGEGwTgEPXNKMKB
	Bxg0YzVktdlxYcgQRmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5gU-0007ei-5P; Fri, 22 Nov 2019 09:57:02 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fR-0006fp-A8
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:55:59 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id DB359FF806;
 Fri, 22 Nov 2019 09:55:48 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:40 +0100
Message-Id: <20191122095541.688125-7-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015557_520140_8171F1AF 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 6/7] config/Config-kernel.in: add various
 options needed for SELinux
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

This commit adds a small number of options to config/Config-kernel.in
so that packages related to SELinux support can enable the appropriate
Linux kernel support.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 config/Config-kernel.in | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 7f8c63f25d..2aa059e56b 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -863,3 +863,15 @@ config KERNEL_CC_OPTIMIZE_FOR_SIZE
 	  your compiler resulting in a smaller kernel.
 
 endchoice
+
+config KERNEL_AUDIT
+	bool "Auditing support"
+
+config KERNEL_SECURITY
+	bool "Enable different security models"
+
+config KERNEL_SECURITY_NETWORK
+	bool "Socket and Networking Security Hooks"
+
+config KERNEL_SECURITY_SELINUX
+	bool "NSA SELinux Support"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
