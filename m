Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCEFF2CB6
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 11:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SwoOklmlwWa+Hpag7nG/CBInXI81P6CkgAP0anecwjc=; b=WlhA8RhXFT/xZW
	6ecQvnYCwdek9emTZ46kVRruZpQIvEp1BHxb4xxE79DP/ANdeP0zgTCw65Gyo+hlNTd/uzp2np5Ml
	wxE1S3opS/U55nkypcbHuJSXCy2xdhJXdM6hyzAebwjAMe+FgAqM3h2U70U18i0r5oPYQ6W8RqNtJ
	fCNUQWga4QnNf7BMp+V/6hLxrhby+sHAjf0a2pqS5+SB/Oj6VsxjgOo18hrYCGFQZmhpP9uuXg+Lz
	C3La0P9IJohY4a7q3NUWMrBJruG+apQeK7+s9gswhKm6OArn6GOf4kWoludtWazqaQ9I3WSSUW1Lq
	RBt4WisgfG2+caiex/uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfDA-0004TO-UQ; Thu, 07 Nov 2019 10:40:21 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfD0-0003rK-Qh
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 10:40:13 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 9C1B2200C2;
 Thu,  7 Nov 2019 10:39:48 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com
Date: Thu,  7 Nov 2019 11:39:40 +0100
Message-Id: <20191107103940.31287-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_024012_068436_3D69EE0F 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.3 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
Subject: [OpenWrt-Devel] [PATCH 1/1] rpcd: add respawn param
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The rpcd service is an important service, but if the service stops
working for any reason, no one will ever respawn that service. With this
commit, the procd service will monitor if the rpcd service
is running. If the rpcd service has crashed, then
procd respawns the rpcd service.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/system/rpcd/Makefile        | 2 +-
 package/system/rpcd/files/rpcd.init | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/system/rpcd/Makefile b/package/system/rpcd/Makefile
index 6f23bbe96e..fcbcc613a6 100644
--- a/package/system/rpcd/Makefile
+++ b/package/system/rpcd/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=rpcd
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/rpcd.git
diff --git a/package/system/rpcd/files/rpcd.init b/package/system/rpcd/files/rpcd.init
index 447133c67a..f75d0e0f0e 100755
--- a/package/system/rpcd/files/rpcd.init
+++ b/package/system/rpcd/files/rpcd.init
@@ -12,6 +12,7 @@ start_service() {
 
 	procd_open_instance
 	procd_set_param command "$PROG" ${socket:+-s "$socket"} ${timeout:+-t "$timeout"}
+	procd_set_param respawn
 	procd_close_instance
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
