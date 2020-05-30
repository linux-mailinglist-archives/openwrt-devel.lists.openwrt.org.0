Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FC71E941F
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 00:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/MEPpHeu2/r5hC+CIBg5KHY5ymQ3GD87PMf6BnpK1E=; b=Ed2hOLnNkdieDN
	ZYM6ENCgl97/hwWvaUe8+x9VDbbyJo18rWQfbCJ2vQXBPFbx1QCWhshdtce5nJWWke+RDpX8vYenD
	uPvCKHaZloAF4V8Za7GKxGysoke0vgA+RxqKVc/jJtd/JuaJ3/GAIG5thEvWbagnfsKfhP9ugWKbk
	BtaUZd3w3pau9QCY5OsNqnx7M8q55Jumz8jcYLuz2yZQlx3w3ClBiBCCn523Vksfxua+MsbexFeVS
	GmcxBwkT7icUZpxG8vBZGXEatEOyrvDNtiHqnL2z2ETve/JBwyZahErA6fudpQTbJZTMu+uEwO5tC
	f3FQDmvQnfHvJrr7BCBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf9dL-0005wv-LL; Sat, 30 May 2020 22:07:15 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf9dE-0005wF-2H
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 22:07:10 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MiagL-1j2EVt0zhv-00fhb9; Sun, 31
 May 2020 00:07:02 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'mans0n'" <mans0n@gorani.run>,
 "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
In-Reply-To: <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
Date: Sun, 31 May 2020 00:06:56 +0200
Message-ID: <008201d636ce$a59470a0$f0bd51e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQI4eyaC4Q6pGr/xWnkZ9+I0XsYPyAEpSMfYp/NbigA=
X-Provags-ID: V03:K1:kGFgcPtH8vQ+H56v+xKhR0+gQyrIg2EUEd1dktKyMdcU4amPKhX
 n7YJyAY/iXD4TYqTfBgx04OAa1HxdUDlio55O80KnrRi0kYACLx5kiZM8QUd38jljkI4grH
 lWEn3ZaEN9rEdo50qNQF9XzzlwQzIsNB/mKJYaZdlQvxEMpARhaYH6sDj6MYeb2yX8mYArc
 DO1xr2DsD+hLFTfDqCGeA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jnKzYbmH2mc=:G3T4Cz80/7J5BtERMedkUx
 zWzJuqnkENPS9dSzvnvtcxOCbOLf8m86jDrESunA5cCcIf61E+MH4J1TynQJV2ZYNNuZnWi5A
 3JQL6NDFpUMn4fWIXwD78iqEO4h4qxvIqtbsnKrgnquD47DBpEu6QGPW1IrtnFtQCO8KDgvBW
 5Y9M+6J02W4MUe0Sc+weCAysni5VkzdEyRtJMdvbNNI1H0FXDJf+8Bmab8dM3l437S+n60hO5
 iw+6oJe5tMHc49cTOb9hGKJVy3ggq4xLfzXBmQWDjt3oVFc/VH6DStufbMXtXT8X3rvAztUDD
 vXCFNqEisRiscynOBJXEOcGAbs5zgCqj43gnmxZkn2JYCozyLrla2uzcHhikiZMymwnFeofya
 FSjnLZ+mb9LSqht7YiHK+YgfnI1eSWKF6scv9gErrKy/WoxKOA3DsYsvjsH0XmYrKSBuxtLMO
 /WO1TRq8jE7MkET+SZDymKGMyS5+JjPE6mSsPSCfy7dBL5WtbuA2fQf42YryoVIBj1059Qbxh
 r/0RvUysiooDNXtWZle+Kx6hqoVVhrakuvomqyaUNIwi5ECsuiCcbQ/AST8EWHdIEmJ7WD7MV
 Oqc7WDdrzcK9Z/GHwu3c7o/jxfBE+L/TdBRN3LB0yiwvnxyI2IiAKsGg53EHrNrcKe6N+ArzA
 S/RLPUK26+2MoYnv0aNMIrNh1uJZhWxCBHCIapPRe5pr07fGZJQZBZbh7eHw6svUXNMM46cCL
 HrB4F6+Rh0nWDvaRRfXyyzHwhLTQCfiAIYuOHxx3Xab9yo/vjdEE1+FPEKV3N5BOs0OlAtH/u
 90GLhwO+U/fdK38/X27WA8qNPrPOrdT+TltcXqbqyMfcfeYwy4zTsDNCQbyAfRYC4dEmOzm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_150708_397561_9D32709A 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mans0n
> Sent: Samstag, 30. Mai 2020 12:20
> To: 'Matthias Schiffer' <mschiffer@universe-factory.net>;
> mail@adrianschmutzler.de
> Cc: 'Linus Walleij' <linus.walleij@linaro.org>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE
> to DEFAULT_TYPE
> 
> Hi Adrian, Matthias,
> 
> I was preparing my own patch for converting DEVICE_TYPE to a device-
> specific variable.
> https://github.com/mans0n/openwrt/commit/4d41dd963ae8d595ef38ea0a3
> 8ea08abdac1415d
> But I stumbled on some blockers so I left it behind...

One of the problems of this approach (changing DEVICE_PACKAGES) is that it
will only work if CONFIG_TARGET_PER_DEVICE_ROOTFS is set, as only then
DEVICE_PACKAGES will be evaluated IIRC. So, this won't help for building
Default Profile and I don't know whether it will work for a single target
device being selected directly (without Multi Profile).

So I don't think this will help for package selection at least.

Best

Adrian

> 
> One of the blockers was the busybox hdparm.
> I'd also found that DEVICE_TYPE in the busybox Makefile does not work as
> intended, thanks to Linus for dealing with this.
> 
> > On 5/29/20 10:52 PM, mail at adrianschmutzler.de wrote:
> >>> Or we just drop the variable at all, and do DEFAULT_PACKAGES :=
> >>> DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router at the beginning
> (!)
> >>> of target.mk, so targets (effectively just 3 of them) can just
> >>> overwrite it with DEFAULT_PACKAGES := DEFAULT_PACKAGES.basic
> >>> DEFAULT_PACKAGES.nas directly in the few cases where that is
> necessary (I'd rather use DEFAULT_PACKAGES_BASIC etc. as names then).
> >>
> >> I've pushed a quick draft of this approach here:
> >>
> >> https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=re
> >> fs/heads/devicetypedrop
> >>
> >> Only the most topmost patch is relevant. From "make menuconfig" it
> seems to work as expected.
> >
> > I would prefer to find a solution that doesn't require adding
> > $(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll
> > have to ponder over this a bit more. Posting the patch - possibly
> > marked as [RFC] - would make discussing this easier.
> >
> >
> >>
> >> The if/else in busybox is not considered in this patch.
> >>
> >
> > Meanwhile I've found another target-specific config setting in the
> > busybox
> > package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx
> only.
> >
> > I assume "truncate" is tiny enough that it doesn't really justify
> > making busybox non-shared, we could just build in truncate
> > unconditionally. I don't know how contrained some of the "nas" targets
> > are, but maybe we should just replace the busybox hack with a
> > full-featured hdparm on these targets?
> 
> Busybox hdparm is about 8k and full hdparm is about 93k. I think most NAS
> devices can manage that space, so I agree with Matthias.
> But the problem is that full hdparm is in the package feed, so it
shouldn't be
> included in DEFAULT_PACKAGES (unless we move the package into the main
> repo).
> 
> Now I prefer removing DEVICE_TYPE entirely as Adrian suggested. I can't
see
> any use case of it other than package selections.
> Perhaps we can create some meta packges (only containing dependencies)
> as an alternative?
> 
> Thanks.
> 
> >
> > Matthias
> >
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
