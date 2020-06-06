Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02A1F08DC
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 23:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OXfVS/KbKLL9D5SMUoHRSHmv/WflfucSTEPhzGbX5EI=; b=a8b7U5Itt3fwuB
	Ylt8tjEjy0Q/aFZ/T68HLUue16gKWZk7OEKXd+a6qqzOhyzE/VnXTlkVqT/4xFz/sSDepMF8TtsZw
	HwUJDH7ZBHR1ehiyqJlMwHJF1YJWbZwhpYqsqrtYcpP5Jot/oS7vYqowWnDf4NOBw7i1B18mIIB+Y
	iKO8Y76gWcUvuDKa3IninhxhL0HwPV5ESh7EtTpHHHOl05+MjrT9pXCAeBzod1+CH+YRoRh+iMmLa
	/ctnVuihPgZT+QAHFCsDIJwe9p3C8FY0HNrMGjin7wkPfiAFGZxumLAYdZAC8I8TGPOBHqxxdXpAa
	8rfjMn5/q+r8K5h5S65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhg6t-0001Tw-5P; Sat, 06 Jun 2020 21:12:11 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhg6k-0001Sx-IC
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 21:12:04 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MiaLn-1j3xEZ2fbD-00fnKQ for <openwrt-devel@lists.openwrt.org>; Sat, 06
 Jun 2020 23:11:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jun 2020 23:09:59 +0200
Message-Id: <20200606210959.44351-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:yYDCdBSujvdqylBPFcDnIDXiSkWZdpYSEQIgrvevkGHggyldbMu
 qbHlhKRnkEPGlrv1YNGlZ5Suav+dDnNxmacxaa3VTccXy97ZrGc/XOCGXu/RB7vILxiebkX
 KK9ILmtghf2O8gSYizxyEPLWqJ0J5U5HoE0QjGjX4ZQTemtQg5r2WPweNJlawYt/VqfgIGq
 7oCU6wnpYgL/gv0hUyfOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iMitIfWXLkc=:m+9//9DxJ6yLqEtbCkITCR
 RHTs/nCLovwEPES4knbbOnTHWYRvG88/9ayJkBKcDJ1gjuZ4toOzQL+VnieBQmeH31YVSlTlr
 jo0kyXcLQ3PM9o3Gc8pqnwNYPuAdFAneabCaYsuqYNV/k8Nll8VNOhNk4aICqJrgjF7Wxrzsw
 6AWiz1lQAoSl+LpfjljmDunJ0nh+oKrcwcw+U61ty3oVfodcin+Au+rzAX1eGT5Rk6iDKRXdw
 wCFjS00WaSuo4THj85q0Wtm81Hdx0hg/dKe2cEUxRrZADjj9Xh6XCXDgLgfr0msBjHbDThTAz
 h8Junq+aMsiixSyKOwJbRbQA7/5QpRs7+yRG0J9mnVmHIQhC2raQILgn1WaPfJ1XHTrnj5v0v
 O49qxjtiMB4Bjboq9CXlC54q3ZkGhzO+ZbK1+qfdXRMtrCA5xfhHqRU+UIGEfSzj92yQPiEFD
 1m58nImxYXNRK3MVQQNe96mwRksr0xU237qzWF42rG8PVdzF8x9v4PCAyvQD+OpUIB3xIFlv7
 Vz0tCbb0kmVt/Y/CJJul2o0lXRMFbOSuAfKNzZxriLJzKTeNXCYQJtMDHykP0OxNQ4TbKQ3s7
 8JGCcY6ttcLQLry5wfJrxMa5SvMeJiOn22iVu1CzrL4vCkAdNnxit5pJBGfdLfoXVqTc5X/dq
 XjlPxFIztjJraSX/WqLeSrZhJUKskGIwUxUoX+huHJ1b6ZrlIWSYKV33cLv+0VEhWFQysNYUu
 4EXaPNS99FXlHlQNyqSP2DNd2O8CaLuDIEOvQn2eFoeF7rirxuyzhUzquk8pUM2Uxv1CFwpux
 4M8sdSsg83JCzIjO3eHBGjD3lK04B+nv2+GKZC2foaBTPM7b3qzRsLXLELL4CxrvLz0kGDN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_141202_896768_586D6813 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] soloscli: fix uci-defaults file
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

The folder for the uci-defaults file of this package is wrong, so
the file most probably has not been executed at all for several
years at least.

Fix the folder and remove the useless shebang for the file.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/config/soloscli/Makefile                        | 2 +-
 .../soloscli/files/etc/{uci-default => uci-defaults}/solos      | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)
 rename package/network/config/soloscli/files/etc/{uci-default => uci-defaults}/solos (97%)

diff --git a/package/network/config/soloscli/Makefile b/package/network/config/soloscli/Makefile
index 877a0f275b..52a53dc0fa 100644
--- a/package/network/config/soloscli/Makefile
+++ b/package/network/config/soloscli/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=soloscli
 PKG_VERSION:=1.04
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=solos-pci-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@SF/openadsl
diff --git a/package/network/config/soloscli/files/etc/uci-default/solos b/package/network/config/soloscli/files/etc/uci-defaults/solos
similarity index 97%
rename from package/network/config/soloscli/files/etc/uci-default/solos
rename to package/network/config/soloscli/files/etc/uci-defaults/solos
index 7f69da62c6..6645fc370a 100644
--- a/package/network/config/soloscli/files/etc/uci-default/solos
+++ b/package/network/config/soloscli/files/etc/uci-defaults/solos
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 uci batch <<__EOF__
 
 delete network.wan.solos0
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
