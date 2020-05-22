Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D80E1DF01D
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 21:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SmT4Y7HiQjwZemPhr6TKItFohvcDF2MC9Ymz8gVEtU=; b=aSMNxjXuYG4HiH
	GN6I9FjxUfEQYpxcG8/eQK/VHzz5QV2nTzWDf5UG2Zgva7XJrWQxZiKteO+IZ922yqIh/6PRUC2n2
	brtiNlyzIYWbK+OjXDaVhutpzMMI4CHsl6qDP0F/CXZ02UJuZLUnNXMRTuwn+O9gE9/kSZCVRv7hW
	hZEOvx0cjuDGCjHxzwO29QO6VNmgdc7RgbZFBl2TStVf9KsV6cU35Yv7lhm2g1pfxkos6JWVTAxIk
	S6lW+eCcu8XiwmrCZ7QSJjtPlBn+BjRTSw2tDb8PrI67HmQo7sCekWwaK4n45PxGFNZSGiiHV8b6Q
	gWlW2rwKKLLFROpjFrBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcDWm-0001pD-3E; Fri, 22 May 2020 19:40:20 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcDWV-0001A2-Mk
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 19:40:05 +0000
Received: from [IPv6:2003:e5:3f0b:5200:4dfe:5a82:ea41:4f94]
 (p200300e53f0b52004dfe5a82ea414f94.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0b:5200:4dfe:5a82:ea41:4f94])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 2B45D236E3
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 21:40:01 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20200521075636.43856-1-mail@david-bauer.net>
From: David Bauer <mail@david-bauer.net>
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <d936fed2-4e6e-14cc-cce3-a00fdffe26da@david-bauer.net>
Date: Fri, 22 May 2020 21:40:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521075636.43856-1-mail@david-bauer.net>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_124003_896734_58B94B03 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: add WEP as queryable build
 feature
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

Just to have it documented it somewhere:

On 5/21/20 9:56 AM, David Bauer wrote:
> Expose the WEP support to LuCi or other userspace tools using the

LuCi seems to already make some wrong assumptions about prerequisites
for specific encryption techniques. It assumes WEP as well as open APs
are supported, but OpenWrt always creates those VAPs using hostapd, same
goes for STA connections (might be wrong on this one).

Mesh as well as Ad-Hoc networks are supported without hostapd or wpa_supplicant
though.

Best wishes
David

> existing interface. This way they are able to remove WEP from the
> available ciphers if hostapd is built without WEP support.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../network/services/hostapd/src/src/utils/build_features.h   | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/package/network/services/hostapd/src/src/utils/build_features.h b/package/network/services/hostapd/src/src/utils/build_features.h
> index abebecb570..b28ff6fa9f 100644
> --- a/package/network/services/hostapd/src/src/utils/build_features.h
> +++ b/package/network/services/hostapd/src/src/utils/build_features.h
> @@ -38,6 +38,10 @@ static inline int has_feature(const char *feat)
>  #ifdef CONFIG_SUITEB192
>  	if (!strcmp(feat, "suiteb192"))
>  		return 1;
> +#endif
> +#ifdef CONFIG_WEP
> +	if (!strcmp(feat, "wep"))
> +		return 1;
>  #endif
>  	return 0;
>  }
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
