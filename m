Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54331EA5E2
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 23:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REnzGTEVTgqa0/23yKjMF/DFfZf+l3IzbCCNd50sOgo=; b=AVb5x1ctaxi9uf
	7aX9E46F6ll4bFA9sCk7aOMriuCbtZwxs6tlkC7ZI2gnSpf+ZHI0dvNqtD6zABFFjMoIN6tP3gFPm
	YSeZXTnWYh9ol5eCMYRsegC+jLrUxYjCA6OM2JWs/UKbfun9hW5idGyIjoqAWZtYlbnqBiUWV3/QW
	apPqLJLyPm/GXs0ok15q2FMKI3qMRDVmLeAd+mNJZHcc4983KsKSy+I4zWuMLFhtbc+KPIMgpIc2z
	dMFEZebhC1Sw09dnRTXa0u4iW/7MaTQ6DaTXa3hq8GJsnEZyR/WABznfdgY9zE7F4pouQFMIK0W6i
	uCpV5NFZ+RKvn6g2Pkdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPw1Q-0001SI-FE; Wed, 30 Oct 2019 22:00:56 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iPw1J-0001RN-Vv
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 22:00:51 +0000
Received: from [IPv6:2003:e5:3f15:8700:4905:daba:2478:349b]
 (p200300E53F1587004905DABA2478349B.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f15:8700:4905:daba:2478:349b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 6F613222B1;
 Wed, 30 Oct 2019 23:00:46 +0100 (CET)
To: Hauke Mehrtens <hauke@hauke-m.de>
References: <20191029224203.203330-1-mail@david-bauer.net>
 <48f09086-f80f-4ba3-4f68-9b8768829dd7@hauke-m.de>
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
Message-ID: <6e069686-8425-9860-4326-8a35ed9b4a9b@david-bauer.net>
Date: Wed, 30 Oct 2019 23:00:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <48f09086-f80f-4ba3-4f68-9b8768829dd7@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_150050_332957_17B9FF1D 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: enable PMKSA and OK caching
 for WPA3-Personal
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Hauke,

On 10/30/19 8:47 PM, Hauke Mehrtens wrote:
> Do you know which, PMKSA or OKC, is needed for the iPhone?

PMKSA caching is the one required to work with the iPhone (however OKC should not be harmful).

> 
> I do not understand why the iPhone only works when one of these options
> is set, you should probably ask on the hostapd mailing list for help,
> this could be also a bug in hostapd.

This is due to the fact, that Apple sends the PMKID in the first association request
(before the EAPOL handshake).

In case PMKID caching is disabled, the association is rejected at this point.

An OpenWrt / Android (probably all wpa_supplicant based clients without sae_pmkid_in_assoc
enabled) will send an empty PMKID list, thus not triggering the issue.

As the PMKID in association seems not to be against the spec, we either have to

a) ignore the PMKID list in the association request
b) enable caching for WPA3-personal / OWE

(I'm not an expert in this field, so feel free to point out wrong assumptions here)

Best wishes
David

> 
>> ---
>>  package/network/services/hostapd/files/hostapd.sh | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
>> index 8da8539e8a..fdbce815df 100644
>> --- a/package/network/services/hostapd/files/hostapd.sh
>> +++ b/package/network/services/hostapd/files/hostapd.sh
>> @@ -540,7 +540,14 @@ hostapd_set_bss_options() {
>>  			append bss_conf "rsn_preauth=1" "$N"
>>  			append bss_conf "rsn_preauth_interfaces=$network_bridge" "$N"
>>  		else
>> -			set_default auth_cache 0
>> +			case "$auth_type" in
>> +			sae|psk-sae|owe)
>> +				set_default auth_cache 1
>> +			;;
>> +			*)
>> +				set_default auth_cache 0
>> +			;;
>> +			esac
>>  		fi
>>  
>>  		append bss_conf "okc=$auth_cache" "$N"
>>
> 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
