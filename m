Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255A5A4B2B
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 20:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yrEKFwxRfJpF5W1vTu1iMJG9hbIwLzyF/JF+F8hEuGo=; b=dZpPi1wTiwF7mf
	meef2gDtSTbt6jdqKTXl7TzIJXjzi3pFjKqqBWZgI4oeZhDVEdl4+Q5U5crG2oy/H+Vp0V/HDZ8KE
	9Bb76FztYHED1rvs4J3Lp6jBr7VfCo7ORguIA6tJE+ZuT68uShBC+nsafjxEZlNPtiMFg+4IocDns
	fHXZCZy4AELWqaVPL8gGQAADFMULAcetEnDH8i4Cwcr4vM3+1zhU8AuVB5fvsH+CAl70MgDhF5WcA
	LSq6Fi4cEi/OSMYFmYBeMnYFIG96LFNer3szmztz1Y+RsTmDsxCZd2z3vycyy4oCOrUAumpx584Nh
	Ur5S0zDA360UrZIg9R3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Ug7-0005p3-Eb; Sun, 01 Sep 2019 18:34:19 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Ufx-0005od-Nq
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 18:34:12 +0000
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz
 [78.102.138.110])
 by mail.nic.cz (Postfix) with ESMTPSA id 231C9140836
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Sep 2019 20:34:05 +0200 (CEST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Sep 2019 20:34:01 +0200
Message-Id: <20190901183401.29040-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_113410_083864_4D6311EB 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
Subject: [OpenWrt-Devel] [PATCH] bzip2: Fix CVE-2019-12900
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

More details about this CVE:
https://nvd.nist.gov/vuln/detail/CVE-2019-12900

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/utils/bzip2/Makefile                  |  2 +-
 .../bzip2/patches/020-CVE-2019-12900.patch    | 65 +++++++++++++++++++
 2 files changed, 66 insertions(+), 1 deletion(-)
 create mode 100644 package/utils/bzip2/patches/020-CVE-2019-12900.patch

diff --git a/package/utils/bzip2/Makefile b/package/utils/bzip2/Makefile
index ea2fc76833..0bf168c229 100644
--- a/package/utils/bzip2/Makefile
+++ b/package/utils/bzip2/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=bzip2
 PKG_VERSION:=1.0.6
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.bzip.org/$(PKG_VERSION)
diff --git a/package/utils/bzip2/patches/020-CVE-2019-12900.patch b/package/utils/bzip2/patches/020-CVE-2019-12900.patch
new file mode 100644
index 0000000000..3f08c789ea
--- /dev/null
+++ b/package/utils/bzip2/patches/020-CVE-2019-12900.patch
@@ -0,0 +1,65 @@
+From 812a898b7622de90e98f103ff7fed0984e4548e4 Mon Sep 17 00:00:00 2001
+From: Mark Wielaard <mark@klomp.org>
+Date: Wed, 3 Jul 2019 01:28:11 +0200
+Subject: [PATCH] Accept as many selectors as the file format allows.
+
+But ignore any larger than the theoretical maximum, BZ_MAX_SELECTORS.
+
+The theoretical maximum number of selectors depends on the maximum
+blocksize (900000 bytes) and the number of symbols (50) that can be
+encoded with a different Huffman tree. BZ_MAX_SELECTORS is 18002.
+
+But the bzip2 file format allows the number of selectors to be encoded
+with 15 bits (because 18002 isn't a factor of 2 and doesn't fit in
+14 bits). So the file format maximum is 32767 selectors.
+
+Some bzip2 encoders might actually have written out more selectors
+than the theoretical maximum because they rounded up the number of
+selectors to some convenient factor of 8.
+
+The extra 14766 selectors can never be validly used by the decompression
+algorithm. So we can read them, but then discard them.
+
+This is effectively what was done (by accident) before we added a
+check for nSelectors to be at most BZ_MAX_SELECTORS to mitigate
+CVE-2019-12900.
+
+The extra selectors were written out after the array inside the
+EState struct. But the struct has extra space allocated after the
+selector arrays of 18060 bytes (which is larger than 14766).
+All of which will be initialized later (so the overwrite of that
+space with extra selector values would have been harmless).
+---
+ compress.c   |  2 +-
+ decompress.c | 10 +++++++-
+ 2 files changed, 8 insertions(+), 2 deletions(-)
+
+--- a/compress.c
++++ b/compress.c
+@@ -454,7 +454,7 @@ void sendMTFValues ( EState* s )
+
+    AssertH( nGroups < 8, 3002 );
+    AssertH( nSelectors < 32768 &&
+-            nSelectors <= (2 + (900000 / BZ_G_SIZE)),
++            nSelectors <= BZ_MAX_SELECTORS,
+             3003 );
+
+
+--- a/decompress.c
++++ b/decompress.c
+@@ -296,8 +296,14 @@ Int32 BZ2_decompress ( DState* s )
+             j++;
+             if (j >= nGroups) RETURN(BZ_DATA_ERROR);
+          }
+-         s->selectorMtf[i] = j;
++         /* Having more than BZ_MAX_SELECTORS doesn't make much sense
++            since they will never be used, but some implementations might
++            "round up" the number of selectors, so just ignore those. */
++         if (i < BZ_MAX_SELECTORS)
++           s->selectorMtf[i] = j;
+       }
++      if (nSelectors > BZ_MAX_SELECTORS)
++        nSelectors = BZ_MAX_SELECTORS;
+
+       /*--- Undo the MTF values for the selectors. ---*/
+       {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
