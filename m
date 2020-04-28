Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742701BBABE
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 12:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0xrMvX3Mo35xfxfPsXFPQt53ZSdRPcFnh3Hg+zUb8LE=; b=hYG+t2wA6p7rh2
	1iEl82yxOqvacjV+1hwii+jPmtuHh5YUfC+ubbCq0c2hlV1C08PvI2/jkQPBIAwEiJKP307UTj7NA
	CfueyqQeQ8t7frXJnmlZNSX0h8I4tt2aAvG+KUKepmNevdF/re6sd+RkNo4ET31oPiMQuPu8Rv8q5
	YuInDQdIodr5OIuIG9+SgHIH+MR4t3EiwNQWd1CSmAoSqWFS758uxwqLbMWBg4NX/qKtEDjHj97qe
	G+JPNDYhHmX+UV1oSqL5/bB9Cbwi4rB79FaDnxRwWlC7HtofMYpP7MRwuYoQvUeRqLeTdR46/AWut
	MXiv2r6t9VEBosWkv5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN9R-0003FN-Bz; Tue, 28 Apr 2020 10:07:41 +0000
Received: from s2.neomailbox.net ([5.148.176.60])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN9K-00037T-1D
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 10:07:35 +0000
From: Antonio Quartulli <a@unstable.cc>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 12:06:58 +0200
Message-Id: <20200428100658.30211-1-a@unstable.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030734_222298_A2301E9C 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] wpad-wolfssl: fix crypto_bignum_sub()
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
Cc: Antonio Quartulli <a@unstable.cc>, Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Backport patch from hostapd.git master that fixes copy/paste error in
crypto_bignum_sub() in crypto_wolfssl.c.

This missing fix was discovered while testing SAE over a mesh interface.

With this fix applied and wolfssl >3.14.4 mesh+SAE works fine with
wpad-mesh-wolfssl.

Cc: Sean Parkinson <sean@wolfssl.com>
Signed-off-by: Antonio Quartulli <a@unstable.cc>
---

This patch is based on master, but should also be applied to
openwrt-19.07 and openwrt-18.06


 .../900-wolfssl-fix-crypto_bignum_sum.patch   | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch

diff --git a/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
new file mode 100644
index 0000000000..d88baa109a
--- /dev/null
+++ b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
@@ -0,0 +1,31 @@
+From 1766e608ba1114220f3b3598e77aa53b50c38a6e Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Mon, 14 Oct 2019 19:27:47 +0300
+Subject: [PATCH] wolfSSL: Fix crypto_bignum_sub()
+
+The initial crypto wrapper implementation for wolfSSL seems to have
+included a copy-paste error in crypto_bignum_sub() implementation that
+was identical to crypto_bignum_add() while mp_sub() should have been
+used instead of mp_add().
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+---
+ src/crypto/crypto_wolfssl.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/crypto/crypto_wolfssl.c b/src/crypto/crypto_wolfssl.c
+index e9894b335..3069b4a7a 100644
+--- a/src/crypto/crypto_wolfssl.c
++++ b/src/crypto/crypto_wolfssl.c
+@@ -1171,7 +1171,7 @@ int crypto_bignum_sub(const struct crypto_bignum *a,
+ 	if (TEST_FAIL())
+ 		return -1;
+ 
+-	return mp_add((mp_int *) a, (mp_int *) b,
++	return mp_sub((mp_int *) a, (mp_int *) b,
+ 		      (mp_int *) r) == MP_OKAY ? 0 : -1;
+ }
+ 
+-- 
+2.26.2
+
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
