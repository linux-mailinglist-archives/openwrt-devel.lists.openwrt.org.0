Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D696F2F6A
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 14:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dXwZvMQhw6MZ+YyudoB9JaCq08SB8/t9JiT8r8cNN5E=; b=BfI18u783NJo0x
	zUNk7QqhCHzaMXJMgA5WHV8qr1T/MP36Uo7rhf6Rw2tkpWtIJf50r0PQ8vwzGNBFNb8ye3wWZ0wY6
	r+PL89YkkRNhVGQ/HD1x0nGa+hvsStf1l9ELoYPP6qGjzK3qI5uC6d4KB7/mvk73m8GI5dq3WvlL5
	gW1ULojX7bQP05g+SPxrJ3CQNW12Ht39TY60hZIsCERsz41MWx/OCkDPhtWqd2r9Ojo5+UaiKgAUT
	wIaUa94Cy2roggv5McldTIuM/SFbXyVcaavy/stGx3KMoUf+vWg5UVymbdrfaUMA8c3JGfIhivnvz
	7+qRsYZkKC6+fTFzUiNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iShtQ-0006IC-8K; Thu, 07 Nov 2019 13:32:08 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShtG-0006HP-Gz
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 13:32:00 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 235092005B;
 Thu,  7 Nov 2019 13:31:37 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com
Date: Thu,  7 Nov 2019 14:31:29 +0100
Message-Id: <20191107133129.8740-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_053158_850680_5AB75C34 
X-CRM114-Status: UNSURE (   8.55  )
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
Subject: [OpenWrt-Devel] [PATCH v2 1/1] rpcd: add respawn param
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
index 447133c67a..3e9ea5bbf3 100755
--- a/package/system/rpcd/files/rpcd.init
+++ b/package/system/rpcd/files/rpcd.init
@@ -12,6 +12,7 @@ start_service() {
 
 	procd_open_instance
 	procd_set_param command "$PROG" ${socket:+-s "$socket"} ${timeout:+-t "$timeout"}
+	procd_set_param respawn ${respawn_retry:-0}
 	procd_close_instance
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
