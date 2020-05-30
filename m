Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF2C1E9422
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 00:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KRaYRYVIChgSiTSqI/eoAU3BMBTBfLVBJMTr2V3RTY=; b=Mdi2jxzg/WLKyn
	hbX6mSMQhi5QkufZJIrG8LFKK+U0lMGu4UY+i1IdxAV/aN7j3SE5lFOGDzygkerydb//pdwK34ezx
	8Toz1wHRW1bhQppHKb6nYCorD+96/yQWG/KLA2kCeXS+kYw9UGDa43UqMpDkKRkVfilug60Y7ZBMG
	ywNNrBj7U/6yVhSDCL7B+J7U8NUSvffMXabXh3is+6A6GpAbMm0/P3ckrN6c153QV7sgVYcJuXUcg
	poMnLYywrCsYlOsAx/nCnLPI5nKKFSvplMFFrjyKbHdGaXDhB9beBEJikXdl5Q3pYh1kdzeCan6K3
	fVrUgbdqrJHEyR55JTzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf9go-0000bb-D6; Sat, 30 May 2020 22:10:50 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf9gh-0000b2-Bb
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 22:10:45 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MN4ux-1jOril3jAz-00J3Rv; Sun, 31
 May 2020 00:10:39 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>,
 "'mans0n'" <mans0n@gorani.run>
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
 <cafdd576-3683-0800-f832-fbf61310d12e@universe-factory.net>
In-Reply-To: <cafdd576-3683-0800-f832-fbf61310d12e@universe-factory.net>
Date: Sun, 31 May 2020 00:10:37 +0200
Message-ID: <008801d636cf$26b848f0$7428dad0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQI4eyaC4Q6pGr/xWnkZ9+I0XsYPyAEpSMfYAU/9s1un6NzzsA==
X-Provags-ID: V03:K1:7BGFlAbwnPXMJiM7e9TPJCMlD9QiVV25TKcEzPOi98wfcb1lqhv
 3u64d1RSs74OZhA8pvZwjTz1uoiM8MbKuFMXk+/zrC6ay4TgKq4q6r43e11UHIeaz5m9z1S
 y5ngs+Y68G1Qva2B31GqMKvMKahoE+RKRDy8mREfd/Klv/uGxA6Omyn76+8FllQXQcNMRce
 vtEUDNjUB4He8PJHaP82g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KCPAxCoqLsM=:eJW8cl46LdhS7Cuom9dnJN
 Q+0aEesa5Bsb/V4xU4VgS0vT6hkaXN8eS3HqVQ3/HonU7WYYDlUiew5nfR2oHZcT2qK+iossc
 Fs2ILtrOkuRCt/3jSApcJQfxQCLO1SC1bYymcBki5s5s5fGv7Q1WbnvHdw91DAMQAVB1XWCAL
 8OGSQZUqat9EB5omMa7f9rMJLNJGFvh8Qs/5hqfAySjli6H3SCbTTwnDf6uVbYV75vSM3iOsh
 BbccfMzta5gWfD704DMS/VdR/9+uWSU8fdsLfXrNmVOD7i6RRUoY49oduOtgFFP5poP40kmU9
 zVXFLsIOL2DOcEXXH/qD3Ai9WbTf62Sdew4+2ukso/QMIP3x7GHVQcNGE4nDAE1C5uqdIPAgE
 mf4XL4ST7uAcz/XTl8aIMgyq810NWloIb+1UF8Z1yUGK5zd1gXKQGhTVX0LQ8ATEKbHdqQ4Ud
 tQbxYbCkOAt5EV4ziAjM7VGns5/84CRNV+VOqvPwiyb1YvNQYF00ENqeOg6k1wFxKtvUhsWga
 qdEJkiFIBuZ75k1BqpaQOI7NxAXJt4+PS8xHNH2Mfz67jlVaq25hcV7YwlKG5+E4iVc7RrTj6
 RXA3oKEi7GUEiCg3axgdCih5dBeRrxRGgykhfM0Z4qkIj2OxFLFyNzylr6qSDp5BptJpq7pD9
 p8iMbDOg+O6A3VFhi3BrptjHmk3pSpEOaogRgM00/pWAf8hUfJ8lBJyIk1THf0f6amFFNIr5A
 wO1tebMy7mOlrkwTDttfz76QIodIDam6mFtgj8j3aYnbseddDcVX5vW1c3iLNRqtjOAUEUHJv
 amXxoLbRebckaihb0P3tgLahf4qpXxuo/PRWt0BVGq6mr8DU+kXna74Y2308rSgBMnGPWL7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_151043_692487_E1B6ABC3 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Matthias Schiffer
> Sent: Samstag, 30. Mai 2020 16:45
> To: mans0n <mans0n@gorani.run>
> Cc: 'Linus Walleij' <linus.walleij@linaro.org>; openwrt-
> devel@lists.openwrt.org; mail@adrianschmutzler.de
> Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE
> to DEFAULT_TYPE
> 
> On 5/30/20 12:20 PM, mans0n wrote:
> > Hi Adrian, Matthias,
> >
> > I was preparing my own patch for converting DEVICE_TYPE to a
> > device-specific variable.
> >
> https://github.com/mans0n/openwrt/commit/4d41dd963ae8d595ef38ea0a3
> 8ea0
> > 8abdac1415d
> >
> > But I stumbled on some blockers so I left it behind...
> >
> > One of the blockers was the busybox hdparm.
> > I'd also found that DEVICE_TYPE in the busybox Makefile does not work
> > as intended, thanks to Linus for dealing with this.
> >
> >> On 5/29/20 10:52 PM, mail at adrianschmutzler.de wrote:
> >>>> Or we just drop the variable at all, and do DEFAULT_PACKAGES :=
> >>>> DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router at the
> beginning (!)
> >>>> of target.mk, so targets (effectively just 3 of them) can just
> >>>> overwrite it with DEFAULT_PACKAGES := DEFAULT_PACKAGES.basic
> >>>> DEFAULT_PACKAGES.nas directly in the few cases where that is
> >>>> necessary (I'd rather use DEFAULT_PACKAGES_BASIC etc. as names
> then).
> >>>
> >>> I've pushed a quick draft of this approach here:
> >>>
> >>> https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=r
> >>> efs/heads/devicetypedrop
> >>>
> >>>
> >>> Only the most topmost patch is relevant. From "make menuconfig" it
> >>> seems to work as expected.
> >>
> >> I would prefer to find a solution that doesn't require adding
> >> $(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll
> >> have to ponder over this a bit more. Posting the patch - possibly
> >> marked as [RFC] - would make discussing this easier.
> >>
> >>
> >>>
> >>> The if/else in busybox is not considered in this patch.
> >>>
> >>
> >> Meanwhile I've found another target-specific config setting in the
> >> busybox
> >> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx
> only.
> >>
> >> I assume "truncate" is tiny enough that it doesn't really justify
> >> making busybox non-shared, we could just build in truncate
> >> unconditionally. I don't know how contrained some of the "nas"
> >> targets are, but maybe we should just replace the busybox hack with a
> >> full-featured hdparm on these targets?
> >
> > Busybox hdparm is about 8k and full hdparm is about 93k. I think most
> > NAS devices can manage that space, so I agree with Matthias.
> > But the problem is that full hdparm is in the package feed, so it
> > shouldn't be included in DEFAULT_PACKAGES (unless we move the
> package
> > into the main repo).
> 
> Moving hdparm to OpenWrt base sounds fine to me. I can take care of that,
> and removing the target-specific busybox config, sometime this weekend.

I'd be happy about anything that removes the DEVICE_TYPE dependency from package config, as I don't really think it's worth keeping that entire mechanism for the small set of options and devices that are effectively affected here (referring to the busybox switch here, DEFAULT_PACKAGES are a separate discussion).

Best

Adrian

> 
> Mtthias
> 
> 
> >
> > Now I prefer removing DEVICE_TYPE entirely as Adrian suggested. I
> > can't see any use case of it other than package selections.
> > Perhaps we can create some meta packges (only containing dependencies)
> > as an alternative?
> >
> > Thanks.
> >
> >>
> >> Matthias
> >>
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
