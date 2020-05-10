Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372F51CCA5C
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 12:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fELYS4K1V0FhxgJGixG2SZsibAINbZPLOtyNqYzT3UI=; b=D9CftnW5YGMW9l
	ouR+XgsFPksFt82TKyFi7+qKfCqrLORRaPgqVsh8MhP0IyoB+BpeC6hGf1IJVmbTi62vM9Fh6Wh+i
	W5hpSy0TdUAMhLFmQ11SZV16MBGcs4F2/TUjADoAoIccr/zW6fomq+qgQMFE8D7Gcxg+8AlvUC1l7
	J8RPQ1sHaULvlZ0ifbB4wL7dOH3BVpVS5OArCVew5QIsIRfBtAK/RoQtNiYHl2fbz2BYDltnRXJaw
	L+1tWD0bDuADrcMlWvThoaiUfpthD5Y8dHgVi9n9ssh6E6mW1gPzJoD6xv6SkAOJ9Sp+BhphmJXtH
	zSt8NTHRHaR+4aIRGsbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXjbG-0000PP-Dr; Sun, 10 May 2020 10:54:26 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXjb8-0000Of-8R
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 10:54:21 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jXjb3-0002oK-0i; Sun, 10 May 2020 12:54:13 +0200
Date: Sun, 10 May 2020 11:53:42 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Antonio Quartulli <a@unstable.cc>
Message-ID: <20200510105342.GA2286@makrotopia.org>
References: <20200428100658.30211-1-a@unstable.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428100658.30211-1-a@unstable.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_035418_297829_9A0F69F8 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] wpad-wolfssl: fix crypto_bignum_sub()
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
Cc: openwrt-devel@lists.openwrt.org, Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Antonio,

I've been trying to get this running two days now, with OpenWrt 19.07
as well as OpenWrt master snapshot on two ath79 devices.
unencrypted mesh always works.
wpad-mesh-openssl works with SAE.
wpad-mesh-wolfssl doesn't work:
wpa_supplicant[1407]: wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx

Which hardware have you tried this with? (as you said it worked fine for
you) Any other patches or tricks?


Cheers


Daniel


On Tue, Apr 28, 2020 at 12:06:58PM +0200, Antonio Quartulli wrote:
> Backport patch from hostapd.git master that fixes copy/paste error in
> crypto_bignum_sub() in crypto_wolfssl.c.
> 
> This missing fix was discovered while testing SAE over a mesh interface.
> 
> With this fix applied and wolfssl >3.14.4 mesh+SAE works fine with
> wpad-mesh-wolfssl.
> 
> Cc: Sean Parkinson <sean@wolfssl.com>
> Signed-off-by: Antonio Quartulli <a@unstable.cc>
> ---
> 
> This patch is based on master, but should also be applied to
> openwrt-19.07 and openwrt-18.06
> 
> 
>  .../900-wolfssl-fix-crypto_bignum_sum.patch   | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
> 
> diff --git a/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
> new file mode 100644
> index 0000000000..d88baa109a
> --- /dev/null
> +++ b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
> @@ -0,0 +1,31 @@
> +From 1766e608ba1114220f3b3598e77aa53b50c38a6e Mon Sep 17 00:00:00 2001
> +From: Jouni Malinen <jouni@codeaurora.org>
> +Date: Mon, 14 Oct 2019 19:27:47 +0300
> +Subject: [PATCH] wolfSSL: Fix crypto_bignum_sub()
> +
> +The initial crypto wrapper implementation for wolfSSL seems to have
> +included a copy-paste error in crypto_bignum_sub() implementation that
> +was identical to crypto_bignum_add() while mp_sub() should have been
> +used instead of mp_add().
> +
> +Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
> +---
> + src/crypto/crypto_wolfssl.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/src/crypto/crypto_wolfssl.c b/src/crypto/crypto_wolfssl.c
> +index e9894b335..3069b4a7a 100644
> +--- a/src/crypto/crypto_wolfssl.c
> ++++ b/src/crypto/crypto_wolfssl.c
> +@@ -1171,7 +1171,7 @@ int crypto_bignum_sub(const struct crypto_bignum *a,
> + 	if (TEST_FAIL())
> + 		return -1;
> + 
> +-	return mp_add((mp_int *) a, (mp_int *) b,
> ++	return mp_sub((mp_int *) a, (mp_int *) b,
> + 		      (mp_int *) r) == MP_OKAY ? 0 : -1;
> + }
> + 
> +-- 
> +2.26.2
> +
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
