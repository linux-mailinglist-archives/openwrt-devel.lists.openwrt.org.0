Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D216AC29
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TANGX51m/M20inXEhAnZHFSkX9SLbAnfCNO/WwpVBzs=; b=OSsSY5ytvhcWki
	/oYHnUtC1IDnsvIPzl+Lq92NcisNo1AY5974jrxa4vt0jFPVnNusw1gHEIQURzwwTpP3siy9EXTjY
	gDSinOnzoLrFyb//E4Ibwj0VthTO4zwRDyitgvX5+AugDI2TY6BbNf4uqyAMRk4XIijsCaZo6j35h
	mEqUOnWeqMiS6Mq4n3tok2l8Wfx/IdZ/V1/tSYVJgcOi6rjHc4BxXWOtSG/aHKKDVNMWKrMP1bxsl
	fi4dPS9ZE1v2lv78mPa1dQqrEcXQKQcwRLu4m+dU759fPP1aHgrXXMNqYEGwXvGKudMdStH2BowLu
	/WakR/MtDZNThScgcm0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GxE-0006fG-82; Mon, 24 Feb 2020 16:51:36 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gx2-0006ei-Vh
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 16:51:26 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MgNtR-1jdNJe1GxT-00hyHO; Mon, 24
 Feb 2020 17:51:21 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>
References: <20200224160818.34303-1-freifunk@adrianschmutzler.de>
 <20200224164311.GE48944@makrotopia.org>
In-Reply-To: <20200224164311.GE48944@makrotopia.org>
Date: Mon, 24 Feb 2020 17:51:19 +0100
Message-ID: <022901d5eb32$a4358240$eca086c0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIwrh4Roo7bxThAxrQQ16B6/DLKTAHpFHeZp2W+zLA=
X-Provags-ID: V03:K1:ytW5mNZB2fnPQ8qrAE91PW9JiatlGsftCQmygzyR1w6q5H/i63L
 P0ULn+nEv5ky+pp0lD8lbXVwmyjdoR8PAo7jzuEfP2+FQ3WK5aoYE6f6NgMkUoi78lR2S+D
 fRtWLE/kDalqvc8TkoT6ShNkXSdcQOF/RkBdIjC3UWebAaRahaWoYpcOGYL6rpGtUdHJ8IC
 o7VSENpQU4SDkrvAQ5+iQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RXeFquSxUEo=:/aMi8b9k/APamJa2UGiGCK
 CwNt4rrcdqB5MY8bbcXGr0oJNsXE04Ou28+Ta0ZO3tPSeYuKFf9MKGfXRa464xSWxRPYfs1nN
 2dZsdpLBN9T0AmcMYXVDMFkHMrw1a9JbieweysO4DaNw+ARuGrRF0dDrKBX3qNmOWO7wAwjk5
 fqhKArUPr+37fEpkpTOADkS5TazEUiP95HnNhZEtbnnj7ojxvZHVYzzeTVuKkrva092BOLa6T
 X9nmE8KggmRfCrgBjr+b1l8x8obVT6zfyseDPBiNtEQ+o2JvdIIrl/sci4NCudK2EbmRp9EMc
 9/WNLa0ivM+kGGLk+7iKIRQQ8nKTKcqliGLUcR3wy+uw2nul55ZyTm4mZiSNPG0JHwf4xoxX8
 CC5+Jx5MU12J7u2nRClzJfFfkrSlyg2/RNeWxN6r/X3Lo5ekVQRgSn1b/DvMOI1NIOUDdRk4n
 8MRVLDeqoRy26GTCPweGTmNCxz7SJLpEqcnIy1kg6QYvXU0yfbGRNLN+4EDGwTMGkm2pv0/Ma
 pRUb41jW1E13Lmo8p9AAFaRZZp7tQ71P+du1IDui6AFzJLG+3nhrM/jlkozIry/xxJ7xeR33+
 xrUhcOPQILnKFcalh5kpb2P/s3xjb06/FjdECTnmtR/i86En5Sk4zDn9eilE8BzFsH8jUq0jI
 UdmUTZxJW6JtFoNSOllJTfMaEEMYo5fgNRk07vARpjcoQzBpV2a2p6WI2JwZ2edaE3lw69fLY
 Ebo9bOLKBhXlLlj1KcrGDL2hOlH2iINB6I7optdcgObcFeNj4UMNIMz0xIhhYvVUftxjvttnt
 jF18ks5cMG9kpu9oXJ1k4o5JVM/tQjz1K6Y7P7dJ8j8b2Xg1CjjwjzlJvI0CifDxTKAYwwx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085125_313476_56D8E7D8 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] package: use PKG_VERSION only for
 upstream packages
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel,

> -----Original Message-----
> From: Daniel Golle [mailto:daniel@makrotopia.org]
> Sent: Montag, 24. Februar 2020 17:43
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; Hans Dedecker <dedeckeh@gmail.com>;
> Jo-Philipp Wich <jo@mein.io>; Andre Valentin <avalentin@marcant.net>; Daniel
> Golle <dgolle@allnet.de>; John Crispin <john@phrozen.org>; Matthias Schiffer
> <mschiffer@universe-factory.net>; Steven Barth <steven@midlink.org>; Felix
> Fietkau <nbd@nbd.name>
> Subject: Re: [OpenWrt-Devel] [PATCH] package: use PKG_VERSION only for
> upstream packages
> 
> On Mon, Feb 24, 2020 at 05:08:18PM +0100, Adrian Schmutzler wrote:
> > In the package guidelines, PKG_VERSION is supposed to be used
> > as "The upstream version number that we're downloading", while
> > PKG_RELEASE is referred to as "The version of this package Makefile".
> > Thus, the variables in a strict interpretation provide a clear
> > distinction between "their" (upstream) version in PKG_VERSION and
> > "our" (local OpenWrt trunk) version in PKG_RELEASE.
> >
> > For local (OpenWrt-only) packages, this implies that those will only
> > need PKG_RELEASE defined, while PKG_VERSION does not apply following
> > a strict interpretation. While the majority of "our" packages actually
> > follow that scheme, there are also some that mix both variables or have
> > one of them defined but keep them at "1".
> >
> > This is misleading and confusing, which can be observed by the fact that
> > there typically either one of the variables is never bumped or the
> > choice of the variable to increase depends on the person doing the change.
> >
> > Consequently, this patch aims at clarifying the situation by consistently
> > using only PKG_RELEASE for "our" packages. To achieve that, PKG_VERSION
> > is removed there, bumping PKG_RELEASE where necessary to ensure the
> > resulting package version string is bigger than before.
> 
> Not sure, but I guess this may bring problems when people do
> opkg show-upgradable
> as removing PKG_VERSION may then result in the package manager
> considering it a downgrade...?
> 
> I haven't tried nor looked into it in detail though.

Thanks for your feedback. This might actually be the only big problem I see,
too, and I also have not tested it yet (but I plan to do so).

I do not plan to merge this fast, but rather wanted to bring this on the table
for discussion (so I do not waste time on testing details in case somebody NAKs
it right away).

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
