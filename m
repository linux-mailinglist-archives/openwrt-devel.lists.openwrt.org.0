Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BA9D73F0
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 12:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2NdT//wuXAyIs64JVpVPMLhZLMW6/aSLP7kYuT62tUo=; b=bp0Gh382i8mSuQ
	l+n6dOD8+LITI4SHrfkMwidbAD1ULSceww1lMG6bigOuGP6bBHf4xSzH3LKqiclATRZIYCLjPPoak
	LC90rQXZjZxnicV3hYWvch+FZfxFqSwEDffVCUfPkDRYhraNSdfa9D05YJ2HwC0YzDoY0MUjDblLw
	Lo1aNxoIXkuYo/wBfyA+tmx/2pcymhnZpheEgy0FfB1mauUGCl9rsCtFv3FDsLNmQJGXrRAhw3Mbw
	OJnOYTbU61FQM17zM0VfB6vCbm+AhAAvOGZKT1Pb3bnBOCjOkKsoMC21Z+QVKUTIS9w3T/BSAzSky
	nGgiAD4vRSrqRcDeNMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKS5-0008BG-Id; Tue, 15 Oct 2019 10:53:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKRy-0008Aq-BS
 for openwrt-devel@bombadil.infradead.org; Tue, 15 Oct 2019 10:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DvJfq6FjSpewb6FhRywFsNsH1gwaFOVbMe2vhqfr9EU=; b=f5pcbJG8bSGV6jHtMTJh3iGKE
 RJa8lRfZcSLMfEwDC3bQoATXOpki3yDY6WXFRIJWGGAwBpTOkCmE0/+60SeljF2NKpRfdc6BGnTgU
 vQeUunNCY/LpnTvC1yADbkCDEnMYG4Lo1jepFXYMspHVvOR8mXtUFyyuBoZwfRg2wKs2PJibSddsP
 vzIwt2JjMjV/mBxJNR0TivP4huAp55GAEHZ7PoSByRay4kh2mEFxhfqU5vkYlkw5txQQj1uFF7NRx
 hsq7icTxqRpiGRi100vKj6UhQ1jrObfkYSqZxj9vbJxcMBzrBNLBrzHjBHLKF0SYyxM51WVR+LaCw
 kuvAK7YuQ==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKRt-00029z-Lg
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 10:53:08 +0000
X-QQ-mid: bizesmtp12t1571136747tiobacqz
Received: from localhost.localdomain (unknown [114.248.152.18])
 by esmtp6.qq.com (ESMTP) with 
 id ; Tue, 15 Oct 2019 18:52:26 +0800 (CST)
X-QQ-SSF: 01400000000000S0IH40000B0000000
X-QQ-FEAT: fJ1l0xwTBHoZNOR6nB9niltWp6OaFKUjZEWdCxKYQjY956GZDkneMfZ1D7S0t
 dR5/w8zUQPELKP0SwYer3zpkmwLL3HjpNNPApshEqD+1FytpMKY4J0AS8qf+75gr2ZpjnBg
 axaA3nPGaKCFpENn3AbhvZRNZmAtfvNO3KAf2M+lw9nqTSM6OqfuV80Qy9iICTQoA89Eejt
 aZrWs8PMC1D7AGEfn70ppNC91IwZ0kkeDPu+rQ/oHEvZ1eYfJYbfBvwOLnboEtHwluOfhrC
 MmkswzhZuepwXLx57nhb0JTfaSXDKA1zHUjPGD66p8Xwebh16ueWhmRSLh3Q4AIwNJf+HIY
 a6aW7CL
X-QQ-GoodBg: 2
From: daxiong <lxliu@ikuai8.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 15 Oct 2019 18:52:23 +0800
Message-Id: <1571136743-95375-1-git-send-email-lxliu@ikuai8.com>
X-Mailer: git-send-email 1.9.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign4
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/1] build: fix select uClibc
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
Cc: daxiong <lxliu@ikuai8.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: daxiong <lxliu@ikuai8.com>
---
 toolchain/Config.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 95087b7..0d288aa 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -252,7 +252,7 @@ choice
 		select USE_UCLIBC
 		bool "Use uClibc"
 		depends on !(aarch64 || aarch64_be || powerpc64)
-		depends on BROKEN || !(arm || armeb || i386 || x86_64 || mips || mipsel || mips64 || mips64el || powerpc)
+		depends on BROKEN || (arm || armeb || i386 || x86_64 || mips || mipsel || mips64 || mips64el || powerpc)
 
 	config LIBC_USE_MUSL
 		select USE_MUSL
-- 
1.9.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
