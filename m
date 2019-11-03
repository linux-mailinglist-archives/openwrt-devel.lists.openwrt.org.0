Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D953AED67C
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 00:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4BDI0YAkaxyW0TUXREDnVrhav47loeVyTiUNNSS9DUE=; b=tKfwwvlF6AqK5P
	yfwlxx8v/MTCt4Dbxw66g4hW+xY0o0ra8nXj0XXf1mw0+J/FHOvzNSgWl1uJW9UbD1TmwOn+YUr9T
	2QVpsHdiYanb9DHJhdpBwshF2kYW3z4o+erphLtkDOGOEYYQ4IuOxFx/Wo67BCZxgocSWlbpw5/Om
	gJQX6P3HJVwoM+/extxpxTMxRYIXypzJupMjThftAgDW50ahid9mHpkaUJ2hPhuoY6NFjBiE1mUTf
	uRXmN8CBSeFm11gRmz7Qp2XJdxH5KMPj74VK19d8jQJMx7JVe43D/JTLC2/VW8GbWE5QqS7c+iHnS
	Kf4zGsD0d+oT67wSEAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRPaD-0007Uo-60; Sun, 03 Nov 2019 23:46:57 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRPa7-0007Tz-Rn
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 23:46:53 +0000
X-Originating-IP: 72.234.165.80
Received: from tb.home (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 06A7E240004;
 Sun,  3 Nov 2019 23:46:36 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 Nov 2019 13:46:18 -1000
Message-Id: <20191103234617.1972-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_154652_037933_31A0627F 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] x86: generate reproducible UUID
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

This commit changes the behaviour of UUID generation. Instead of using
the rand module of perl, generating a random UUID per compile, it now
hashes the SOURCE_DATE_EPOCH, resulting in a reproducible UUID.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index ac70e771c8..68c2bee9d4 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -40,7 +40,7 @@ ifneq ($(GRUB_TERMINALS),)
   GRUB_TERMINAL_CONFIG := terminal_input $(GRUB_TERMINALS); terminal_output $(GRUB_TERMINALS)
 endif
 
-SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')
+SIGNATURE:=$(shell echo "$(SOURCE_DATE_EPOCH)" | sha256sum | cut -c 1-8 -z)
 ROOTPART:=$(call qstrip,$(CONFIG_TARGET_ROOTFS_PARTNAME))
 ROOTPART:=$(if $(ROOTPART),$(ROOTPART),PARTUUID=$(SIGNATURE)-02)
 
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
