Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8A91CE8D3
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 01:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmYXMksD2xHJnxDq9IZFBbVsrAL5I0+igxe746j8M3I=; b=rRcYfqcZSl5Fvr
	QiEGlShCriU9CxmcK0UBwOknHhpqxcCGVylg/ZoR1mwXT/DHpqfljGTyb1ZejEcJUDzRJLnW6E7sj
	mUzHL0V2v9Bsb+Lrnhmv6/5bHOO27qkIxURuRkjfBYruYJsNevdnnKI/tdPU3OUfPdX+vX4MsEBj3
	hD5MUCYjg3ZWDg50m5JajypbGAin6A2KGxKcpsGdR0c3RvrRdJ+JxWUD9eh40z64LcFdgVe3gjr5I
	72aeahp48h5EKVxWyGb+4dxlf5TAdXvkh8/ASgro2fRvQO0HM1ycd6lIiRWkrbTfyLAwcp1iOtUtB
	oCOvODLrMhSYCz/Xe6Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHVz-0003dM-2T; Mon, 11 May 2020 23:07:15 +0000
Received: from s2.neomailbox.net ([5.148.176.60])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHVt-0003cB-Az
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 23:07:11 +0000
To: Daniel Golle <daniel@makrotopia.org>
References: <20200428100658.30211-1-a@unstable.cc>
 <20200510105342.GA2286@makrotopia.org>
From: Antonio Quartulli <a@unstable.cc>
Autocrypt: addr=a@unstable.cc; prefer-encrypt=mutual; keydata=
 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
 qxdgy3a76luREOncW7wRQGcFPk2uYAg=
Message-ID: <6928175a-304a-fc37-8887-060d97b2bbf6@unstable.cc>
Date: Tue, 12 May 2020 01:06:38 +0200
MIME-Version: 1.0
In-Reply-To: <20200510105342.GA2286@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_160709_535258_B1B0A94F 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Daniel,

On 10/05/2020 12:53, Daniel Golle wrote:
> Hi Antonio,
> 
> I've been trying to get this running two days now, with OpenWrt 19.07
> as well as OpenWrt master snapshot on two ath79 devices.
> unencrypted mesh always works.
> wpad-mesh-openssl works with SAE.
> wpad-mesh-wolfssl doesn't work:
> wpa_supplicant[1407]: wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
> 
> Which hardware have you tried this with? (as you said it worked fine for
> you) Any other patches or tricks?

I have been using wpad-mesh-wolfssl successfully on ath9k (QCA9531) and
ath10k (IPQ4019).

My openwrt is a bit stuck in the past: I am using
8baadecb1647a125f5d8f9eaf521c1468543133a with:
* wolfssl bumped to 3.14.4.
* hostapd Makefile patched to use wolfssl

My hostapd is on fa617ee6a0b2d39e6372c93ef9437caa3bd9065a plus the
following:
* the patch I sent
* two or three more patches that are already merged in the hostapd
revision you are using in openwrt master.


I haven't tried to get this going on openwrt master though.



Cheers,


> 
> 
> Cheers
> 
> 
> Daniel
> 
> 
> On Tue, Apr 28, 2020 at 12:06:58PM +0200, Antonio Quartulli wrote:
>> Backport patch from hostapd.git master that fixes copy/paste error in
>> crypto_bignum_sub() in crypto_wolfssl.c.
>>
>> This missing fix was discovered while testing SAE over a mesh interface.
>>
>> With this fix applied and wolfssl >3.14.4 mesh+SAE works fine with
>> wpad-mesh-wolfssl.
>>
>> Cc: Sean Parkinson <sean@wolfssl.com>
>> Signed-off-by: Antonio Quartulli <a@unstable.cc>
>> ---
>>
>> This patch is based on master, but should also be applied to
>> openwrt-19.07 and openwrt-18.06
>>
>>
>>  .../900-wolfssl-fix-crypto_bignum_sum.patch   | 31 +++++++++++++++++++
>>  1 file changed, 31 insertions(+)
>>  create mode 100644 package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
>>
>> diff --git a/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
>> new file mode 100644
>> index 0000000000..d88baa109a
>> --- /dev/null
>> +++ b/package/network/services/hostapd/patches/900-wolfssl-fix-crypto_bignum_sum.patch
>> @@ -0,0 +1,31 @@
>> +From 1766e608ba1114220f3b3598e77aa53b50c38a6e Mon Sep 17 00:00:00 2001
>> +From: Jouni Malinen <jouni@codeaurora.org>
>> +Date: Mon, 14 Oct 2019 19:27:47 +0300
>> +Subject: [PATCH] wolfSSL: Fix crypto_bignum_sub()
>> +
>> +The initial crypto wrapper implementation for wolfSSL seems to have
>> +included a copy-paste error in crypto_bignum_sub() implementation that
>> +was identical to crypto_bignum_add() while mp_sub() should have been
>> +used instead of mp_add().
>> +
>> +Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
>> +---
>> + src/crypto/crypto_wolfssl.c | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/src/crypto/crypto_wolfssl.c b/src/crypto/crypto_wolfssl.c
>> +index e9894b335..3069b4a7a 100644
>> +--- a/src/crypto/crypto_wolfssl.c
>> ++++ b/src/crypto/crypto_wolfssl.c
>> +@@ -1171,7 +1171,7 @@ int crypto_bignum_sub(const struct crypto_bignum *a,
>> + 	if (TEST_FAIL())
>> + 		return -1;
>> + 
>> +-	return mp_add((mp_int *) a, (mp_int *) b,
>> ++	return mp_sub((mp_int *) a, (mp_int *) b,
>> + 		      (mp_int *) r) == MP_OKAY ? 0 : -1;
>> + }
>> + 
>> +-- 
>> +2.26.2
>> +
>> -- 
>> 2.26.2
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

-- 
Antonio Quartulli

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
