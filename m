Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2CC110130
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 16:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88VO3yptzmE9ItZrnxnNjsiGtQY29+1EsGXYo9HuXiM=; b=f3b00m7u8sh6Vw
	+Wzmn0rcWoozgD6jU5dnQtKpYc44imfiSSaqqMgKh/eavdz5G3k9xjv1RD+keHwu78oU6eBSMWKdY
	x6W6UUi0+7a+Y0dKtqcwlMyIqzFc3VtKX/yQQk4OsFseDBmpwbfZQSVbxr5S0HWUIhQCSAhY9fkc/
	X7BmK2znBGM5w2MrIJQVCXx/4FmMq1jOr1Tt9VVu9bbb+hc93NdY89PGrUhRs1xFPzVCrYI/QWYZW
	R9lFgJgmkMJ6P/wOj3moDCohGEpiR88XdG990GdudO5sHk1NRjIbrscR6m2zte+VJ1blFRAFZLAsi
	Tt+dsBn+7mCBsGnEb9Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icA3t-0006l9-72; Tue, 03 Dec 2019 15:26:01 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icA3l-0006kQ-PQ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 15:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575386748;
 bh=N0pAqYX1Fny29HKq4mpbrw7QdIoZdw34Qf2cnKHw26Y=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=iOQC9A8dfwjR9JcALPp8YBzyHJsrbHEYKWs2QwKDoWzKL0VZCdFAHKsz3MReeZWKE
 KzdV32njACxKnLWZJn5Uk+lcnm/9O2Qo5OHuVYg0+NQbr2wABRM3U9mgNFln8AZSZF
 fQBMs6OahNimipKuw9IpLwcK/J21RvsmQTDf7Zsg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.98]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MfHEJ-1i9OoJ2rSF-00gnwr for
 <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 16:25:48 +0100
Date: Tue, 3 Dec 2019 16:25:47 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191203152546.GA2930@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
X-Provags-ID: V03:K1:Vd0jyJEfJqBgF2/DFK+aptIKFpnjvuFTTyxGY+6DpV9tg5euoao
 0fDqg26mkwfZhQ82L2RT5GxT7dN+iPQhZccfbC00SV21NLhHT6zicUg1dYtOXIk5e9+Erh5
 gI4hNOMTsCBhq5RjDPW4scd/5xFlfIot1qKnjsmVEdupu0fNDI/ql4loP466w+cwK9RkCF6
 M2keo6Lu3sfSQHFIjDowA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ugkIwhQvNs0=:QR0u2A7eiS3PUQ5A6BwkfZ
 8lByiJsJ3zjNEAJfIXxsJRRCYiqkXXSA1We26YalCqv9QELTHrEsreMv7Vei7yjbEJGcOWiBh
 YUvx5aKPuHMdXaMojAK1ewd3Vcy8zZkR/rvohMB2wdxk0+lCwlLDVQ8cZgOno/xAqEoLIkO2/
 sEEEhhZKmgaQN6hPeXkrzcVCrV+AzPdqCnIR39wvpyeX92Lxi24bQwLFLDCo52stgOJgnal1W
 Xo/LIrB6ek/7IpBDneMsKw1X98jbKP5qxw/MlvtCjHCHVQV83HuNXxCsLSG6hCqa9509d/ySY
 lk5XteG88C51tVsG+txay1T8q9e5KsmNPHup02XNDWU//8nDlLbLr15/O+oJeh/x2ZVAZnXZd
 4ADqi/7WGvLXZySv0Sz5IoESGcvMKwSvNzc1T4uVwDXZuDqSNXpNyRYROP8UQ1I66+lBy+Wr8
 IfBJwDfiBlm6bYB5784rSAFnN+evJwOLbFz4OxVzdQ2Opudr05BKyNb1Y/yz2/sLJlUKkrdFh
 1tuQG4qbvqnsJtYs5UD/EbZ/F2y7zGZk6x+rnlOFhX10mpeBuRsKXZC57LnjGJyr2aYrC855j
 +zZGA96286VTTP3cZosL9/JbyefvPmmGHkNAT8Zu2i2ZVy3giM/5pVM7aS/YDtwJ41JDJtDsp
 wWSebpOe9h0OfoXQPTbC/x97Mlv5O4cTSrdheZ5D9cmX8xREwB3hQLkV3/N8hfbkhPwj+blSg
 NyTkDbPVWKEKjNzssbC74sl5BwsO5eQ6lc73kf3pIeofURpdWNOmWNCxD4/xkq6D22NLWNLLj
 3NKUezlsT8xysXbwlInuNOQNS0zJPMSH2IL7PTR6xdLNKu1G4PZJlv5EVVgKy0uvwF7aytOO2
 Ie+wJ7RgyPdp9YdvALnxt5eOZH9IhSonl8ZxEzHr6h2vZ6cXqIbgZ0lrqrxhOKzj2uB/ugFV1
 myBRSV/i9S263RvrNdX3KIOdcOnK1070DDQgwI7dsn2EHMlxEF8ZDRz95uBu2S1yAXZ3DBgyB
 YW52JnOA0KPGzXSKrJD2+/sBeEDJB0lQfaRGLdOsGslsEqyvGwYjPCZZPDcAQD352l9Dam9yc
 cCCkwBGnnJa6DekrlpGm/4VBL7Ngsu7aCzKbOkK69yFB41NH0ZKPCx4IIhYzXlhSgHF3Owamd
 i0dDWRP4jApesV69LrWd+BXPYRyb/HOt9pnDBeapjkeS+zxHBsXCnZRdTNurWwxSMEKbpW9MX
 irT2snks1uzRzob/FdhIvVlVSrOZPyHD7PW1S4mitMsk1veXfbOjDm5vh408=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_072554_762697_E609515A 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Dec 03, 2019 at 03:59:18PM +0100, Uwe Kleine-K=F6nig wrote:

<snip>

>
> ok, so you claim my SoB means that *I* confirmed that my change is
> compatible to the netifd's license. I didn't do that though.
>
> Even if it was me who added that line I doubt is has any relevance for
> netifd because nothing in the netifd sources explains what an SoB means.
> And the link you sent applies only to patches for openwrt, not netifd.
> (Also if this is the only place for openwrt where the significance of an
> SoB is described I wonder if this is relevant given that from the POV of
> openwrt.git the wiki is an external resource that can be modified by
> anyone. What if someone removes item (d) from the wiki or introduces an
> (e)?)

Hi Uwe,

The OpenWrt "Submitting patches" article links to
https://www.kernel.org/doc/html/latest/process/submitting-patches.html.
There the sign-off (and the reasons for it) is explained a bit more. So
it seems OpenWrt is just following kernel.org's example. Which is fine
in my opinion.

Regarding somebody adding the sign-off _for_ you I share your opinion.
It has to be _your_ sign-off, so if a third party adds it for you this
is not correct.

I didn't really think about this before reading your mail. So thanks for
highlighting this.

Regards,
Seb

> Don't get me wrong, my patch is compatible to netifd's license. But if
> you want that netifd's license situation stays reasonably safe and
> clean, it IMHO cannot be that you add a SoB for someone else, and give
> that SoB a meaning that isn't documented for your project and assumes
> things about that someone else that you cannot know for sure. So if you
> require a formalism, please formalize it properly. (Of course INAL, but
> that's my understanding of how open source licensing works.)
>
> Best regards
> Uwe

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
