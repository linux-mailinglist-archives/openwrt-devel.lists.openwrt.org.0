Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4C31411F1
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 20:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdUnyYETvi5bht2+ZbzRiVrE06/39OET1efl1T0JpxA=; b=Eb7rI2VMQUxYD4
	rM25ibC4qO7FQPD58ouA0GS5BWJW9PWDC1lykKwXbV5ZVPM79G7hhfet4AuK8LG3QKHFrlGeiUQcv
	lN+51dnMdUkOmqYiNyZs+BEQQj1UwZ3xWGFk1xpFmC0polcaFCk58q0yZB7M4cdc1NxiRGkezNovl
	YgBhZ40cUx4G5QNID1jtVTQruQKmuV9R+DN+pvcLC38eg5+UaUUXiojbvW9ic6Asvp/OwVRzbfvfL
	njQPRdTjbJ2sfqFRzJkE6oKqpj7bJWuAZLN5TPnpBZ655NquEpT9DDVJZ0erm0q/w0ojDmSlrjHs7
	ionfcoiNZ4+ET6BgpVYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXZu-00026m-4t; Fri, 17 Jan 2020 19:46:46 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXZk-000269-Ip
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 19:46:40 +0000
Received: from [192.168.43.216] (ip-109-40-131-92.web.vodafone.de
 [109.40.131.92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 29FDC22E9C;
 Fri, 17 Jan 2020 20:46:31 +0100 (CET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
 <20200116114813.GC84286@meh.true.cz>
 <20200116194359.775fffdd@kosmio.komorska>
 <05299fe0-e929-df32-ac96-50b967203e1e@andreas-ziegler.de>
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
Message-ID: <ae70a653-4510-1f8b-95ac-ffb2812c629f@david-bauer.net>
Date: Fri, 17 Jan 2020 20:46:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <05299fe0-e929-df32-ac96-50b967203e1e@andreas-ziegler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_114636_919983_EE89F4F1 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: Andreas Ziegler <dev@andreas-ziegler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On 1/17/20 11:14 AM, Andreas Ziegler wrote:
> Hi,
> 
> although i'm more a user than a developer, i would also prefer a sooner
> release based on 4.19 over a later release based on 5.4.

I have the same feeling. The state of many targets on 4.19 is pretty good IMHO.
So i think a timely release somewhere around march/april is possible (as soon as
the ramips situation is sorted out). I think we can aim for a 5.4 release somewhere
in late autumn / winter, as targets will be gradually migrated.

Best wishes
David

> Maybe it's the same problem, too atheros-centric ;-)
> 
> Regards
> 
> Andreas
> 
> Michal Cieslakiewicz wrote on 16.01.20 19:43:
>> Hi!
>>
>> Speaking as a small part-time contributor of some Netgear WN(D)R routers
>> code, please reconsider if jumping over 4.19 straight to 5.4 is not a
>> too big leap. I'm sure kernel devs here knows better than me how many
>> OpenWrt drivers, quirks and enhancements can be ported without too much
>> effort from 4.14 to 5.4 that will really benefit from newer 5.x code,
>> but here are my 5 cents.
>>
>> I was able to port ar934x-nand code from ar71xx 4.4 kernels to ath79 &
>> device-tree 4.19 without going too deep into low-level NAND operations
>> thanks to only minor changes in kernel code. 5.4 apparently deprecates
>> some functions in that area providing 'legacy' knobs for
>> who-knows-how-long. If this particular flash driver won't work with 5.4
>> at the time of 20.x, routers using it (like WNDR4300 and
>> other AR9344-based) effectively will not have any stable OpenWrt
>> release supporting it even though they were in master since the end of
>> 2019.
>>
>> IMHO OpenWrt should have an one final, rock-stable release based on
>> latest 4.x LTS kernel (4.19 that is) with ath79 replacing ar71xx
>> whenever possible.
>>
>> Apologies for being so Atheros-centric :-)
>>
>> Cheers
>> Michal
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
