Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AFBB820F
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 22:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wXQnUPaxypc2dyak3BCWsFoG1ppL3ydXV8gqXsVgMKU=; b=jvBljireQuqfy2
	t8mCr5VWpTncnWp+KiAHQIc0P5V6qho410n3NWjPyT4qdYt1FsBk89EVSWKJKAuFZp31ytz3jYbfM
	HEr/75pkpHZQ32zfMeCvzRHzKENVWU5ybjYtiwOZBdcXQZi5YhIbt1nm2eZBl72bnEk0Xl6EruuFr
	cB12P4OdEuDVDUEsOrEs9rT0Fhmt5g46bFybeypU85efCD3IADalTpLL4bLhcinGbsxvVN5C89241
	n8rwWCrzseu0Xj1rPNMipGNztLSe4miHwHodFNCFxDDXv8t7bjF9B47AMgou3YeYON4BW9YwhLkJY
	fiQarwloZDudGoiWeo+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2bM-00069C-IY; Thu, 19 Sep 2019 20:00:28 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Qc-0000c6-CW
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 19:49:24 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 1299D53F0E;
 Thu, 19 Sep 2019 21:49:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id kMkCBuKuc4IE; Thu, 19 Sep 2019 21:49:12 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Sep 2019 21:49:10 +0200
Message-Id: <20190919194910.3857-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_124922_643688_22A24672 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] gcc: Fix ICE in GCC 9.2.0
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This backports a fix from GCC master to fix a internal compiler
exception seen when compiling libjson-c with mips16 activated.

Fixes: FS#2455
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...uninitialised_use_in_mips_split_move.patch | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch

diff --git a/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch b/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch
new file mode 100644
index 0000000000..3529a19d8c
--- /dev/null
+++ b/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch
@@ -0,0 +1,55 @@
+From d57faea9337ad595d005687247c3322252f70ba1 Mon Sep 17 00:00:00 2001
+From: rsandifo <rsandifo@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Sun, 7 Jul 2019 09:49:14 +0000
+Subject: [PATCH] Fix uninitialised use in mips_split_move
+
+While testing the fix for PR91068, I hit an rtl checking failure
+while building newlib.  mips_split_move was decomposing an address that
+happened to be symbolic and then tried to access the REGNO of the base
+register field, which wasn't initialised but which by chance pointed to
+valid memory.
+
+2019-07-07  Richard Sandiford  <richard.sandiford@arm.com>
+
+gcc/
+	* config/mips/mips.c (mips_split_move): Zero-initialize addr
+	and check whether addr.reg is nonnull before using it.
+
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@273174 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/ChangeLog          | 5 +++++
+ gcc/config/mips/mips.c | 4 ++--
+ 2 files changed, 7 insertions(+), 2 deletions(-)
+
+--- a/gcc/ChangeLog
++++ b/gcc/ChangeLog
+@@ -1,3 +1,8 @@
++2019-07-07  Richard Sandiford  <richard.sandiford@arm.com>
++
++	* config/mips/mips.c (mips_split_move): Zero-initialize addr
++	and check whether addr.reg is nonnull before using it.
++
+ 2019-08-12  Release Manager
+ 
+ 	* GCC 9.2.0 released.
+--- a/gcc/config/mips/mips.c
++++ b/gcc/config/mips/mips.c
+@@ -4849,7 +4849,7 @@ mips_split_move (rtx dest, rtx src, enum
+      can forward SRC for DEST.  This is most useful if the next insn is a
+      simple store.   */
+   rtx_insn *insn = (rtx_insn *)insn_;
+-  struct mips_address_info addr;
++  struct mips_address_info addr = {};
+   if (insn)
+     {
+       rtx_insn *next = next_nonnote_nondebug_insn_bb (insn);
+@@ -4862,7 +4862,7 @@ mips_split_move (rtx dest, rtx src, enum
+ 		{
+ 		  rtx tmp = XEXP (src, 0);
+ 		  mips_classify_address (&addr, tmp, GET_MODE (tmp), true);
+-		  if (REGNO (addr.reg) != REGNO (dest))
++		  if (addr.reg && REGNO (addr.reg) != REGNO (dest))
+ 		    validate_change (next, &SET_SRC (set), src, false);
+ 		}
+ 	      else
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
