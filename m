Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF60E17D050
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 22:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wKbtm7+bhGH9hcVgesnpjxj0UY5lKnFklqMy2+m48pg=; b=IHncEU+YeY5RxpiWdjEHReN6Y7
	GRSpb9jLFOTxHjZx9Bh6iue2pIF0LuGJ/QWfVxpY4ZJqMO4/P8ls+5joEgNLtZkLQ1GcXwxaf+RF0
	nioRQyLf0u8sTRYX0z0JTIK4lWcPLmdwJu+mdD14lKd5yoeJZrattptJxIJeCVtDkoP3DaMqf7DlU
	tiZKCRTyqIBtkcK58DT4C+BtfCN/VzXYlqQvj3cR00tr9G2CEVL0T5GMeEVkhhQNF9sqalSQ+lG0k
	SrLdpPku4I3EKLDbb4MYbZiQ9t+RHb176hQpfWe95d/SbXheVG0z9ixUpnFfm0Cjy3sT+vD/dgZx9
	c8HIs9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAh6P-0002Oh-QP; Sat, 07 Mar 2020 21:35:21 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAh6E-0001ng-A9
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1583617810; h=Feedback-ID:
 X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
 List-Unsubscribe; bh=k7zO2/vmN1/k95ZSCrY2KRsf9dg1eFa3dwsbZs99EoI=; b=aWEoiiOt
 FDuQ+aET/d09ftG/L2KTejeBzzuU8M+vVNgnh//X510xSEiiAj3rDTERKvjr6pxyYb8gQjOphySrn
 0WC52ENU5dEAPf1BbiF1seQWOvfLHjISiVX6CSuiS+FXbbdMPU71jXuvEKxiacwrPuxaXXS+Y+BQ9
 s3d1JtAn1KpESd/5yxcW2ZCBjeBKqs0GKZO2xAR/kQHJpDJ2psQWHzzd85zuC+ItKOBFBdOxix5+y
 9n3MbmFR69pQFGjWnJXiZP8TWirCRJRHMRCQEypqw8Cpi/j/QLoLuVHP6GOgvdzPcDZ5eTxte8fBN
 8cKvioFmRMAwbn2yLgLefxbCVg==;
Received: from [10.45.79.71] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1jAh6D-ItkFnr-H4
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:35:09 +0000
Received: from [10.162.83.196] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1jAh5s-Duud18-PV
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:34:48 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 33D5661D026
 for <openwrt-devel@lists.openwrt.org>; Sat,  7 Mar 2020 16:34:14 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id SJUBPIyXTeVR for <openwrt-devel@lists.openwrt.org>;
 Sat,  7 Mar 2020 16:34:12 -0500 (EST)
Received: from blaze.homeip.net (blaze
 [IPv6:2001:470:1f07:a3a:dc8:1e2:a6b:6125])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 5337361D019
 for <openwrt-devel@lists.openwrt.org>; Sat,  7 Mar 2020 16:34:12 -0500 (EST)
Received: by blaze.homeip.net (Postfix, from userid 4444)
 id 988302078E61; Sat,  7 Mar 2020 16:34:12 -0500 (EST)
From: Paul Blazejowski <paulb@blazebox.homeip.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Mar 2020 16:33:13 -0500
Message-Id: <20200307213312.18088-1-paulb@blazebox.homeip.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
References: <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
MIME-Version: 1.0
X-Smtpcorp-Track: 1Mjh5sDIId18eV.ZFN5ExGpV
Feedback-ID: 316702m:316702a3jAEqy:316702sOOMfMsYUo
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_133510_423330_1EDB2BFC 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH v2] exfat-nofuse: fix kernel 5.4 compilation
 issue
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

Make exfat-nofuse module depend on kernels 4.14 and 4.19

Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
---
v2:
  * removed 0003-5.0.patch
  * enabled build dependency for 4.14 and 4.19 kernels only
  
 kernel/exfat-nofuse/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
index 8354f5621..3931dbc34 100644
--- a/kernel/exfat-nofuse/Makefile
+++ b/kernel/exfat-nofuse/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=exfat-nofuse
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
 PKG_SOURCE_PROTO:=git
@@ -29,7 +29,7 @@ define KernelPackage/fs-exfat
 	TITLE:=ExFAT Kernel driver
 	FILES:=$(PKG_BUILD_DIR)/exfat.ko
 	AUTOLOAD:=$(call AutoLoad,30,exfat,1)
-	DEPENDS:=+kmod-nls-base
+	DEPENDS:=+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
 endef
 
 define KernelPackage/fs-exfat/description
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
