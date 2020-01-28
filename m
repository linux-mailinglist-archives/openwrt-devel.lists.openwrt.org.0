Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA0614BD39
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 16:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6JTpaFoIpWqRCJqq0qxjM09X6GPo2rLsp/88axNGMY=; b=aasTPE6UZFpnau
	yjhqX29AYTGi8isFmuqHRDSqD6jd1s07ghqxjk3oCZ9/Z8qhQfNG0zC2jfRtoYbDYoqoJbkjy+3ia
	XTo0khHy0IdEaKDSeUIJkTRQMUOy17QTsCp9mMRU2Rls9GEKyb5Yok4sXuViuTDq8qu7YTfUslwSQ
	pGFjmanL77mI9H75TJNVtHEqq2Iaf0giIE4FJj44xkAo2yxk6OqykemRTgbQ6dUGfD2E8+lhSocu/
	IGZLk2ZoSpVdy91HyywNEvRuiTOA3ueslucrJLwKAolKJDeDcV5uzoeyAG2yBsqcyrXIYi68P/aYD
	pdTK4Qv2kHaEyTDRuZmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwT6n-0001Lm-69; Tue, 28 Jan 2020 15:48:57 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwT6Q-0001Al-GF
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 15:48:36 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MEVmm-1im2ic3GP4-00FzTS; Tue, 28
 Jan 2020 16:48:28 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
In-Reply-To: <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
Date: Tue, 28 Jan 2020 16:48:28 +0100
Message-ID: <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhAdXATn4CkcEaigGcwTU9ArqxLZABTM2NBgI0xCSNp/xqLdA=
Content-Language: de
X-Provags-ID: V03:K1:EKWTyH+ypVoBFTpzFBNdND9XG1LGw3QLLe49g4qB/Wyc5mvfM07
 Dk1Pvvbh8Vf0sHy9lFvhlKCm4DrLPHn608xL1QGYQIrhviNZIKinK2uGM/A04J5cTGuQoTJ
 zH6Xon3wfwNFmr5HQei+nMS1Vc0Uva5cUpwGrg7jgcFBDZ8sfNogoUmTcypaX4wTXRLBsDm
 55WS0/zqPZxKnlkdj97wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:421j8kzoLRQ=:wE/8zN7lfhxmH9XG75/URB
 o7r6xaRD+pHWMUPu/u4FFtKOQZQqQsdVK2kCxlO1Qmqu0Y6CRZZKR2QGNpO8B9OHq1UPng3Be
 tNuxwtO7+V2U5jOGUfqx2asvGgKUp1s1caa8OLZmxociHZrqLGdeizR/gAmHzl/XRDFjkXKcS
 xPIZ6R5EI8ygMUqdaJ7jG3MdJDpKZZ+a3R2bixKKbbRBL0fzpVg8t4b10n3yS6ous6zqB7PJh
 /BpJ1FOmmZtjY/aNOrapBOxZrOd1/q7e9ic49sOSp1GSe5q7c8RcAXAwiH7+HfKwmmPjI7x18
 yWW5slNE/pOZ7nz3WTnJec0LpjxrGRWZ+honhQNA1kPHDc6UXlaCMY2invStfSqolY0PaQUb0
 bEixuTDBDEZkRULxA2r5gW+NLq1gWeI4FQAmUSmVeteC7UKxQ3QbIanxOIrScCrrq09BgH08r
 G4Z8i7baf5lXW0zlDHCDULXkl0OBMJFNmobnkqRSD/HaW1NED5kONyAHlsDaosV8pmbZ+HmSr
 6cVeWDe1YxW+NlCnooK+/Qi+nnQimF59tOv+BN2BC0xonwlsS0QaN+YFB0wl92+gYvaqT9AhM
 kaMBj3hmxz8cmCxzWUxaWuURtSRwIsY+Wk38RnX/ZqM1lVfXF8m0n57CBReVfyWurDHp2+rbm
 VMHp4UMyq6F5CW3BOSbL4nDT/++JYR91UjOoSjNksGxPVvA2OG49UkVoehvm0r53wUA+Qw03G
 RBUy2xfBkd7O/rMVA76LLjjqPzkqgOUbGWo02SfDsjPq5y8ASYhr760r2d+rTHREaMM72bk+7
 XwS2L9CnRiIiSDJafw90Lbc20COO5CroS4Z2vCVhMYjuSsI4BomCOhS44hjCMfgXuOXcelT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_074834_837250_5303C7CE 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Piotr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Montag, 27. Januar 2020 21:45
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; gch981213@gmail.com;
> ansuelsmth@gmail.com; 'David Bauer' <mail@david-bauer.net>
> Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
> 
> Hi Adrian,
> 
> On 27.01.2020 19:35, Adrian Schmutzler wrote:
> > Just a quick one:
> >
> >> > So, no matter what we do, there is no easy way forward.
> >>
> >> We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
> >> board names from supported devices lists in ath79 images and make the
> >> target a brand new, without any concerns about soon-to-be obsolete ar71xx
;)
> >
> > At the moment, I'm actually mostly inclined towards this solution.
> 
> I'm afraid it's a bit late for that as 19.07 is already out and it
> supports (at least partially) ar71xx -> ath79 migration path/s.
> Wouldn't that look unprofessional? Am I overreacting here?

One didn't have to use -F during sysupgrade, but the release notes gave the
clear advice to upgrade without keeping settings.
So, IMO we actually didn't "support" any migration in 19.07.0.

> 
> > However, for me personally SUPPORTED_DEVICES was always more a "don't
> brick entirely" flag, so I never expected it to ensure 100 % config
compatibility.
> More like preventing me from flashing ubnt,unifi image onto
tplink,wdr-4300-v1.
> This impression might have been wrong, though.
> 
> I think device to image matching was the main reason behind the idea.
> IIRC, mismatched image doesn't prevent you against upgrading with
> preserved settings.
> 
> > But as mentioned by Ansuel, there are other incompatible switches to come
> (and some are already waiting), and unless we want to create new targets or
> rename devices in these cases, we have to think about different "levels" of
> compatibility anyway beyond ar71xx->ath79.
> 
> I believe ar71xx -> ath79 is a special case here. First of all, that's a
> new DTS-enabled target and it was suppose to _replace_ ar71xx but 19.07
> went out with both of them and I'm pretty sure there are users who got
> confused with that (some devices are supported only in one of the
> targets, some in both, some with seamless migration possible). On the
> other hand, when ar71xx gets abandoned, we (as a project) should make it
> clear if ath79 is a replacement (thus providing seamless upgrade from
> ar71xx) or a new target, without any relationship with ar71xx (thus a
> clean sysupgrade is required). Keeping anything in between would just
> confuse people.

I do not really see a viable/desirable option to support eth migration at the
moment. And I'm not really a fan of adding lots of migration stuff which spoils
the new ath79 target already, so after all I think I also do not _want_ to add
eth migration either.

So, I'd prefer to see the ath79 new and clean.

However, from the wording perspective, I do not think that a "replacement" means
seamless upgrade. I'd thus keep the SUPPORTED_DEVICES just as a device-matching
measure, but wouldn't implement any sophisticated migration despite that. Having
SUPPORTED_DEVICES might actually be valuable for certain third parties, like I'm
involved in a downstream project that regenerates the system/network config at
each upgrade, but still exploits SUPPORTED_DEVICES for having the correct image.

And I could well live with keeping the already present migration scripts, as
having them as "undocumented feature" won't hurt. If we do not advertise it, it
won't confuse people ...

Best

Adrian



> 
> DSA is slightly different topic as it will touch many different targets
> (also ath79, think about qca8k) so probably a project-wide solution
> would be required.
> 
> --
> Cheers,
> Piotr
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
