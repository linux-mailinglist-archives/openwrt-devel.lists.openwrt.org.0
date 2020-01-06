Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9507F1314D4
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 16:32:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kh/oH6VW2K/0SLESxNcjpM1fLJKBF3mWrHuPDQUffDw=; b=MCcNmLa5sc/DcR
	/GxbFB4y845WuAgrUp8l5BfnlqA/4/3No8eSGVHA9cqxuPoMr6jpQ4+QWzLTk5baAJbrF9xB5TSWs
	XjI5YdOYYiVX7QJrx0pAA1McwwYs3kZheN/pIj9styfqujKTsf6pKGmn9qBKH5wB4QuERQ+elIwhv
	HoKhxpkEZfIjsuFgAEAyXfdufNIfm6LMKp2BuRi68DyjpTvUsNdPCGUfU/kLkavJ/LnYmeHTPFvDl
	2c8L1HoAT9dgWaRGj11bLNXMNx+2i2TUeSPqMWUu33ycNgVCL5P8TPG5v98wJvNKKBwOkJo6c/36o
	wQPyPuzJZIkGBkd6Tt9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioUMg-0002H2-VZ; Mon, 06 Jan 2020 15:32:22 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioUMZ-0002G2-Dk
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 15:32:17 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47rzyb3ns4zKm7s;
 Mon,  6 Jan 2020 16:32:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id D1JuQ6LMAXJg; Mon,  6 Jan 2020 16:32:04 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Jan 2020 16:31:45 +0100
Message-Id: <20200106153145.18676-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_073215_614556_206D812A 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: Fix potential dnsmasq crash with
 TCP
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
Cc: fercerpav@gmail.com, dedeckeh@gmail.com, Hauke Mehrtens <hauke@hauke-m.de>,
 yszhou4tech@gmail.com, ldir@darbyshire-bryant.me.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a backport from the dnsmasq master which should fix a bug which
could cause a crash in dnsmasq.

I saw the following crashes in my log:
[522413.117215] do_page_fault(): sending SIGSEGV to dnsmasq for invalid read access from 2a001450
[522413.124464] epc = 004197f1 in dnsmasq[400000+23000]
[522413.129459] ra  = 004197ef in dnsmasq[400000+23000]
This is happening in blockdata_write() when block->next is
dereferenced, but I am not sure if this is related to this problem or if
this is a different problem. I am unable to reproduce this problem.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...egative-SRV-response-over-TCP-gets-s.patch | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 package/network/services/dnsmasq/patches/0040-Fix-crash-when-negative-SRV-response-over-TCP-gets-s.patch

diff --git a/package/network/services/dnsmasq/patches/0040-Fix-crash-when-negative-SRV-response-over-TCP-gets-s.patch b/package/network/services/dnsmasq/patches/0040-Fix-crash-when-negative-SRV-response-over-TCP-gets-s.patch
new file mode 100644
index 0000000000..5b1d59566d
--- /dev/null
+++ b/package/network/services/dnsmasq/patches/0040-Fix-crash-when-negative-SRV-response-over-TCP-gets-s.patch
@@ -0,0 +1,35 @@
+From e710c34469af4378c2db6fa0b0be88313adcb68f Mon Sep 17 00:00:00 2001
+From: Alin Nastac <alin.nastac@gmail.com>
+Date: Mon, 30 Sep 2019 15:30:26 +0100
+Subject: [PATCH] Fix crash when negative SRV response over TCP gets stored in
+ LRU cache entry.
+
+Patch extended to receive side of pipe by SRK.
+---
+ src/cache.c | 8 ++++++--
+ 1 file changed, 6 insertions(+), 2 deletions(-)
+
+--- a/src/cache.c
++++ b/src/cache.c
+@@ -665,7 +665,11 @@ void cache_end_insert(void)
+ 	      if (flags & (F_IPV4 | F_IPV6 | F_DNSKEY | F_DS | F_SRV))
+ 		read_write(daemon->pipe_to_parent, (unsigned char *)&new_chain->addr, sizeof(new_chain->addr), 0);
+ 	      if (flags & F_SRV)
+-		 blockdata_write(new_chain->addr.srv.target, new_chain->addr.srv.targetlen, daemon->pipe_to_parent);
++		{
++		  /* A negative SRV entry is possible and has no data, obviously. */
++		  if (!(flags & F_NEG))
++		    blockdata_write(new_chain->addr.srv.target, new_chain->addr.srv.targetlen, daemon->pipe_to_parent);
++		}
+ #ifdef HAVE_DNSSEC
+ 	      if (flags & F_DNSKEY)
+ 		{
+@@ -737,7 +741,7 @@ int cache_recv_insert(time_t now, int fd
+ 	  if (!read_write(fd, (unsigned char *)&addr, sizeof(addr), 1))
+ 	    return 0;
+ 
+-	  if (flags & F_SRV && !(addr.srv.target = blockdata_read(fd, addr.srv.targetlen)))
++	  if ((flags & F_SRV) && !(flags & F_NEG) && !(addr.srv.target = blockdata_read(fd, addr.srv.targetlen)))
+ 	    return 0;
+ 	
+ #ifdef HAVE_DNSSEC
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
